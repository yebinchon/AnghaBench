
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvlist_t ;
struct TYPE_3__ {int * fa_cache; } ;
typedef TYPE_1__ fileargs_t ;


 int nvlist_destroy (int *) ;

__attribute__((used)) static void
fileargs_set_cache(fileargs_t *fa, nvlist_t *nvl)
{

 nvlist_destroy(fa->fa_cache);
 fa->fa_cache = nvl;
}
