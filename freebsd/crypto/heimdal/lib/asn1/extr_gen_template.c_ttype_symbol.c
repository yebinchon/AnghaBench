
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* symbol; } ;
typedef TYPE_2__ Type ;
struct TYPE_4__ {char const* gen_name; } ;



__attribute__((used)) static const char *
ttype_symbol(const char *basename, const Type *t)
{
    return t->symbol->gen_name;
}
