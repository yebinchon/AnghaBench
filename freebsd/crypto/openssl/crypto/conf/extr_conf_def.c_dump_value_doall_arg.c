
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int section; int value; scalar_t__ name; } ;
typedef TYPE_1__ CONF_VALUE ;
typedef int BIO ;


 int BIO_printf (int *,char*,int ,...) ;

__attribute__((used)) static void dump_value_doall_arg(const CONF_VALUE *a, BIO *out)
{
    if (a->name)
        BIO_printf(out, "[%s] %s=%s\n", a->section, a->name, a->value);
    else
        BIO_printf(out, "[[%s]]\n", a->section);
}
