
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long nid; } ;
typedef TYPE_1__ ENGINE_PILE ;



__attribute__((used)) static unsigned long engine_pile_hash(const ENGINE_PILE *c)
{
    return c->nid;
}
