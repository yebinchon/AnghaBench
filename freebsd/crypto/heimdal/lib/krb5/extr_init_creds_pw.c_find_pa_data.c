
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t len; TYPE_1__* val; } ;
struct TYPE_5__ {unsigned int padata_type; } ;
typedef TYPE_1__ PA_DATA ;
typedef TYPE_2__ METHOD_DATA ;



__attribute__((used)) static PA_DATA *
find_pa_data(const METHOD_DATA *md, unsigned type)
{
    size_t i;
    if (md == ((void*)0))
 return ((void*)0);
    for (i = 0; i < md->len; i++)
 if (md->val[i].padata_type == type)
     return &md->val[i];
    return ((void*)0);
}
