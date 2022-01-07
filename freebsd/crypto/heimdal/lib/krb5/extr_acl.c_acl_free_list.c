
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_field {struct acl_field* next; } ;


 int free (struct acl_field*) ;
 int free_retv (struct acl_field*) ;

__attribute__((used)) static void
acl_free_list(struct acl_field *acl, int retv)
{
    struct acl_field *next;
    if (retv)
 free_retv(acl);
    while(acl != ((void*)0)) {
 next = acl->next;
 free(acl);
 acl = next;
    }
}
