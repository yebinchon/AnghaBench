
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {int type; } ;


 int RADIUS_ACCT ;
 struct rad_handle* rad_open () ;

struct rad_handle *
rad_acct_open(void)
{
 struct rad_handle *h;

 h = rad_open();
 if (h != ((void*)0))
         h->type = RADIUS_ACCT;
 return h;
}
