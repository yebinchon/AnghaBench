
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* time_t ;
struct e {int max_vno; struct e* next; void* timestamp; int principal; } ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;


 int context ;
 struct e* get_entry (int ,struct e*) ;
 scalar_t__ krb5_copy_principal (int ,int ,int *) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 struct e* malloc (int) ;

__attribute__((used)) static void
add_entry (krb5_principal princ, int vno, time_t timestamp, struct e **head)
{
    krb5_error_code ret;
    struct e *e;

    e = get_entry (princ, *head);
    if (e != ((void*)0)) {
 if(e->max_vno < vno) {
     e->max_vno = vno;
     e->timestamp = timestamp;
 }
 return;
    }
    e = malloc (sizeof (*e));
    if (e == ((void*)0))
 krb5_errx (context, 1, "malloc: out of memory");
    ret = krb5_copy_principal (context, princ, &e->principal);
    if (ret)
 krb5_err (context, 1, ret, "krb5_copy_principal");
    e->max_vno = vno;
    e->timestamp = timestamp;
    e->next = *head;
    *head = e;
}
