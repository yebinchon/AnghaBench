
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct any_data {scalar_t__ kt; struct any_data* name; struct any_data* next; } ;
typedef int krb5_context ;


 int free (struct any_data*) ;
 int krb5_kt_close (int ,scalar_t__) ;

__attribute__((used)) static void
free_list (krb5_context context, struct any_data *a)
{
    struct any_data *next;

    for (; a != ((void*)0); a = next) {
 next = a->next;
 free (a->name);
 if(a->kt)
     krb5_kt_close(context, a->kt);
 free (a);
    }
}
