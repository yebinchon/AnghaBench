
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ members; } ;
typedef TYPE_1__ Type ;



__attribute__((used)) static const char *
bitstring_symbol(const char *basename, const Type *t)
{
    if (t->members)
 return basename;
    return "heim_bit_string";
}
