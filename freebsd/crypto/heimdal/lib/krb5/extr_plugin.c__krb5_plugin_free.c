
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_plugin {struct krb5_plugin* next; } ;


 int free (struct krb5_plugin*) ;

void
_krb5_plugin_free(struct krb5_plugin *list)
{
    struct krb5_plugin *next;
    while (list) {
 next = list->next;
 free(list);
 list = next;
    }
}
