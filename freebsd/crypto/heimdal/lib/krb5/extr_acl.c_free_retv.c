
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** retv; } ;
struct acl_field {scalar_t__ type; struct acl_field* next; TYPE_1__ u; } ;


 scalar_t__ acl_retval ;
 int free (int *) ;

__attribute__((used)) static void
free_retv(struct acl_field *acl)
{
    while(acl != ((void*)0)) {
 if (acl->type == acl_retval) {
     if (*acl->u.retv)
  free(*acl->u.retv);
     *acl->u.retv = ((void*)0);
 }
 acl = acl->next;
    }
}
