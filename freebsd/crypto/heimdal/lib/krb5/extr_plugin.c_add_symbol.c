
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_plugin {struct krb5_plugin* next; void* symbol; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int ENOMEM ;
 struct krb5_plugin* calloc (int,int) ;
 int krb5_set_error_message (int ,int ,char*) ;

__attribute__((used)) static krb5_error_code
add_symbol(krb5_context context, struct krb5_plugin **list, void *symbol)
{
    struct krb5_plugin *e;

    e = calloc(1, sizeof(*e));
    if (e == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, "malloc: out of memory");
 return ENOMEM;
    }
    e->symbol = symbol;
    e->next = *list;
    *list = e;
    return 0;
}
