
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct undef_handler {int dummy; } ;


 int LIST_REMOVE (struct undef_handler*,int ) ;
 int M_UNDEF ;
 int free (void*,int ) ;
 int uh_link ;

void
remove_undef_handler(void *handle)
{
 struct undef_handler *uh;

 uh = handle;
 LIST_REMOVE(uh, uh_link);
 free(handle, M_UNDEF);
}
