
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ hEvent; } ;
struct wpa_ctrl_dst {scalar_t__ pipe; struct wpa_ctrl_dst* rsp_buf; TYPE_3__* prev; TYPE_2__* next; TYPE_1__* priv; TYPE_4__ overlap; } ;
struct TYPE_7__ {TYPE_2__* next; } ;
struct TYPE_6__ {TYPE_3__* prev; } ;
struct TYPE_5__ {TYPE_2__* ctrl_dst; } ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MSG_DEBUG ;
 int eloop_unregister_event (scalar_t__,int) ;
 int os_free (struct wpa_ctrl_dst*) ;
 int wpa_printf (int ,char*,struct wpa_ctrl_dst*) ;

__attribute__((used)) static void ctrl_close_pipe(struct wpa_ctrl_dst *dst)
{
 wpa_printf(MSG_DEBUG, "CTRL: close pipe %p", dst);

 if (dst->overlap.hEvent) {
  eloop_unregister_event(dst->overlap.hEvent,
           sizeof(dst->overlap.hEvent));
  CloseHandle(dst->overlap.hEvent);
 }

 if (dst->pipe != INVALID_HANDLE_VALUE) {






  CloseHandle(dst->pipe);
 }

 if (dst->prev)
  dst->prev->next = dst->next;
 else
  dst->priv->ctrl_dst = dst->next;
 if (dst->next)
  dst->next->prev = dst->prev;

 os_free(dst->rsp_buf);
 os_free(dst);
}
