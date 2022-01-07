
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hEvent; } ;
struct wpa_global_dst {scalar_t__ pipe; struct wpa_global_dst* prev; struct wpa_global_dst* next; TYPE_1__ overlap; struct ctrl_iface_global_priv* priv; } ;
struct ctrl_iface_global_priv {struct wpa_global_dst* ctrl_dst; } ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ ConnectNamedPipe (scalar_t__,TYPE_1__*) ;
 int * CreateEvent (int *,int ,int ,int *) ;
 scalar_t__ CreateNamedPipe (int ,int,int,int,int ,int ,int,int *) ;


 int FILE_FLAG_OVERLAPPED ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int NAMED_PIPE_PREFIX ;
 int PIPE_ACCESS_DUPLEX ;
 int PIPE_READMODE_MESSAGE ;
 int PIPE_TYPE_MESSAGE ;
 int PIPE_WAIT ;
 int REPLY_BUFSIZE ;
 int REQUEST_BUFSIZE ;
 int SetEvent (int *) ;
 int TRUE ;
 int eloop_register_event (int *,int,int ,struct wpa_global_dst*,int *) ;
 int global_close_pipe (struct wpa_global_dst*) ;
 int os_free (struct wpa_global_dst*) ;
 struct wpa_global_dst* os_zalloc (int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_global_iface_receive ;

__attribute__((used)) static int global_open_pipe(struct ctrl_iface_global_priv *priv)
{
 struct wpa_global_dst *dst;
 DWORD err;

 dst = os_zalloc(sizeof(*dst));
 if (dst == ((void*)0))
  return -1;
 wpa_printf(MSG_DEBUG, "CTRL: Open pipe %p", dst);

 dst->priv = priv;
 dst->pipe = INVALID_HANDLE_VALUE;

 dst->overlap.hEvent = CreateEvent(((void*)0), TRUE, TRUE, ((void*)0));
 if (dst->overlap.hEvent == ((void*)0)) {
  wpa_printf(MSG_ERROR, "CTRL: CreateEvent failed: %d",
      (int) GetLastError());
  goto fail;
 }

 eloop_register_event(dst->overlap.hEvent,
        sizeof(dst->overlap.hEvent),
        wpa_supplicant_global_iface_receive, dst, ((void*)0));


 dst->pipe = CreateNamedPipe(NAMED_PIPE_PREFIX,
        PIPE_ACCESS_DUPLEX | FILE_FLAG_OVERLAPPED,
        PIPE_TYPE_MESSAGE |
        PIPE_READMODE_MESSAGE |
        PIPE_WAIT,
        10, REPLY_BUFSIZE, REQUEST_BUFSIZE,
        1000, ((void*)0));
 if (dst->pipe == INVALID_HANDLE_VALUE) {
  wpa_printf(MSG_ERROR, "CTRL: CreateNamedPipe failed: %d",
      (int) GetLastError());
  goto fail;
 }

 if (ConnectNamedPipe(dst->pipe, &dst->overlap)) {
  wpa_printf(MSG_ERROR, "CTRL: ConnectNamedPipe failed: %d",
      (int) GetLastError());
  CloseHandle(dst->pipe);
  os_free(dst);
  return -1;
 }

 err = GetLastError();
 switch (err) {
 case 129:
  wpa_printf(MSG_DEBUG, "CTRL: ConnectNamedPipe: connection in "
      "progress");
  break;
 case 128:
  wpa_printf(MSG_DEBUG, "CTRL: ConnectNamedPipe: already "
      "connected");
  if (SetEvent(dst->overlap.hEvent))
   break;

 default:
  wpa_printf(MSG_DEBUG, "CTRL: ConnectNamedPipe error: %d",
      (int) err);
  CloseHandle(dst->pipe);
  os_free(dst);
  return -1;
 }

 dst->next = priv->ctrl_dst;
 if (dst->next)
  dst->next->prev = dst;
 priv->ctrl_dst = dst;

 return 0;

fail:
 global_close_pipe(dst);
 return -1;
}
