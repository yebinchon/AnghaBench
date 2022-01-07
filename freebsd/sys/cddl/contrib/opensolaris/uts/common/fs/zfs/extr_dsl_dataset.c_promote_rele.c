
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ddpa_clone; int * origin_origin; int origin_snaps; int clone_snaps; int shared_snaps; } ;
typedef TYPE_1__ dsl_dataset_promote_arg_t ;


 int dsl_dataset_rele (int *,void*) ;
 int snaplist_destroy (int *,void*) ;

__attribute__((used)) static void
promote_rele(dsl_dataset_promote_arg_t *ddpa, void *tag)
{
 snaplist_destroy(&ddpa->shared_snaps, tag);
 snaplist_destroy(&ddpa->clone_snaps, tag);
 snaplist_destroy(&ddpa->origin_snaps, tag);
 if (ddpa->origin_origin != ((void*)0))
  dsl_dataset_rele(ddpa->origin_origin, tag);
 dsl_dataset_rele(ddpa->ddpa_clone, tag);
}
