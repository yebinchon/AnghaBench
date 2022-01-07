
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_fs_x__id_t ;
struct TYPE_9__ {int * owner; } ;
typedef TYPE_2__ svn_fs_x__id_context_t ;
typedef int svn_fs_id_t ;
struct TYPE_8__ {TYPE_2__* fsap_data; int * vtable; } ;
struct TYPE_10__ {TYPE_1__ generic_id; int noderev_id; } ;
typedef TYPE_3__ fs_x__id_t ;
typedef int apr_pool_t ;


 TYPE_3__* apr_pcalloc (int *,int) ;
 int get_fs (TYPE_2__*) ;
 int id_vtable ;
 TYPE_2__* svn_fs_x__id_create_context (int ,int *) ;
 int svn_fs_x__id_used (int const*) ;

svn_fs_id_t *
svn_fs_x__id_create(svn_fs_x__id_context_t *context,
                    const svn_fs_x__id_t *noderev_id,
                    apr_pool_t *result_pool)
{
  fs_x__id_t *id;


  if (!svn_fs_x__id_used(noderev_id))
    return ((void*)0);



  if (context->owner != result_pool)
    context = svn_fs_x__id_create_context(get_fs(context), result_pool);


  id = apr_pcalloc(result_pool, sizeof(*id));
  id->noderev_id = *noderev_id;

  id->generic_id.vtable = &id_vtable;
  id->generic_id.fsap_data = context;

  return (svn_fs_id_t *)id;
}
