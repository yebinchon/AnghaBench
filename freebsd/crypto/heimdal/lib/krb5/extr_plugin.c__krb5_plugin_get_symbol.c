
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_plugin {void* symbol; } ;



void *
_krb5_plugin_get_symbol(struct krb5_plugin *p)
{
    return p->symbol;
}
