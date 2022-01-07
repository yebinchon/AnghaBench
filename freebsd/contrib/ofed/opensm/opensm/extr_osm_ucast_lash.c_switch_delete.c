
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* dij_channels; } ;
typedef TYPE_1__ switch_t ;
typedef int lash_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void switch_delete(lash_t *p_lash, switch_t * sw)
{
 if (sw->dij_channels)
  free(sw->dij_channels);
 free(sw);
}
