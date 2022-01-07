
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct undefined_handler {int dummy; } ;


 int LIST_REMOVE (struct undefined_handler*,int ) ;
 int M_TEMP ;
 int free (struct undefined_handler*,int ) ;
 int uh_link ;

void
remove_coproc_handler(void *cookie)
{
 struct undefined_handler *uh = cookie;

 LIST_REMOVE(uh, uh_link);
 free(uh, M_TEMP);
}
