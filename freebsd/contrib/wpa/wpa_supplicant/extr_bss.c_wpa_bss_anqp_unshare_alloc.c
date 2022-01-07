
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_bss_anqp {int users; } ;
struct wpa_bss {struct wpa_bss_anqp* anqp; } ;


 struct wpa_bss_anqp* wpa_bss_anqp_alloc () ;
 struct wpa_bss_anqp* wpa_bss_anqp_clone (struct wpa_bss_anqp*) ;

int wpa_bss_anqp_unshare_alloc(struct wpa_bss *bss)
{
 struct wpa_bss_anqp *anqp;

 if (bss->anqp && bss->anqp->users > 1) {

  anqp = wpa_bss_anqp_clone(bss->anqp);
  if (anqp == ((void*)0))
   return -1;
  anqp->users = 1;
  bss->anqp->users--;
  bss->anqp = anqp;
  return 0;
 }

 if (bss->anqp)
  return 0;


 bss->anqp = wpa_bss_anqp_alloc();
 return bss->anqp ? 0 : -1;
}
