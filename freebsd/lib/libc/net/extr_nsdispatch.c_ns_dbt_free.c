
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; int srclistsize; int srclist; } ;
typedef TYPE_1__ ns_dbt ;


 int free (void*) ;
 int ns_src_free (int *,int ) ;

__attribute__((used)) static void
ns_dbt_free(ns_dbt *dbt)
{
 ns_src_free(&dbt->srclist, dbt->srclistsize);
 if (dbt->name)
  free((void *)dbt->name);
}
