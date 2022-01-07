
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_bss_anqp {int users; int anqp_elems; } ;


 int dl_list_init (int *) ;
 struct wpa_bss_anqp* os_zalloc (int) ;

struct wpa_bss_anqp * wpa_bss_anqp_alloc(void)
{
 struct wpa_bss_anqp *anqp;
 anqp = os_zalloc(sizeof(*anqp));
 if (anqp == ((void*)0))
  return ((void*)0);



 anqp->users = 1;
 return anqp;
}
