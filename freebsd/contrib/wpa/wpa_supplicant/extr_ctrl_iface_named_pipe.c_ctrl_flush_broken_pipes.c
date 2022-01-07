
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl_dst {int used; int pipe; struct wpa_ctrl_dst* next; } ;
struct ctrl_iface_priv {struct wpa_ctrl_dst* ctrl_dst; } ;


 int MSG_DEBUG ;
 scalar_t__ ctrl_broken_pipe (int ,int ) ;
 int ctrl_close_pipe (struct wpa_ctrl_dst*) ;
 int wpa_printf (int ,char*,struct wpa_ctrl_dst*) ;

__attribute__((used)) static void ctrl_flush_broken_pipes(struct ctrl_iface_priv *priv)
{
 struct wpa_ctrl_dst *dst, *next;

 dst = priv->ctrl_dst;

 while (dst) {
  next = dst->next;
  if (ctrl_broken_pipe(dst->pipe, dst->used)) {
   wpa_printf(MSG_DEBUG, "CTRL: closing broken pipe %p",
       dst);
   ctrl_close_pipe(dst);
  }
  dst = next;
 }
}
