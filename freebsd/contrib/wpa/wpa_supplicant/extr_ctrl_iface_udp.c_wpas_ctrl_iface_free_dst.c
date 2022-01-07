
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl_dst {struct wpa_ctrl_dst* next; } ;


 int os_free (struct wpa_ctrl_dst*) ;

__attribute__((used)) static void wpas_ctrl_iface_free_dst(struct wpa_ctrl_dst *dst)
{
 struct wpa_ctrl_dst *prev;

 while (dst) {
  prev = dst;
  dst = dst->next;
  os_free(prev);
 }
}
