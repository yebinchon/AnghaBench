
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subtype; } ;
typedef TYPE_1__ Type ;


 char const* symbol_name (char const*,int ) ;

__attribute__((used)) static const char *
tag_symbol(const char *basename, const Type *t)
{
    return symbol_name(basename, t->subtype);
}
