
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e {int principal; struct e* next; } ;


 int context ;
 int free (struct e*) ;
 int krb5_free_principal (int ,int ) ;

__attribute__((used)) static void
delete_list (struct e *head)
{
    while (head != ((void*)0)) {
 struct e *next = head->next;
 krb5_free_principal (context, head->principal);
 free (head);
 head = next;
    }
}
