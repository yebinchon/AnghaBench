
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * type; } ;
typedef TYPE_1__ Symbol ;



__attribute__((used)) static int
use_extern(const Symbol *s)
{
    if (s->type == ((void*)0))
 return 1;
    return 0;
}
