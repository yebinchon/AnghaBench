
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e {int principal; struct e* next; } ;
typedef int krb5_principal ;


 int context ;
 scalar_t__ krb5_principal_compare (int ,int ,int ) ;

__attribute__((used)) static struct e *
get_entry (krb5_principal princ, struct e *head)
{
    struct e *e;

    for (e = head; e != ((void*)0); e = e->next)
 if (krb5_principal_compare (context, princ, e->principal))
     return e;
    return ((void*)0);
}
