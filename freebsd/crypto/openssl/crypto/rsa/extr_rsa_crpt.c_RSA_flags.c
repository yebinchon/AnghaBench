
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* meth; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_2__ RSA ;



int RSA_flags(const RSA *r)
{
    return r == ((void*)0) ? 0 : r->meth->flags;
}
