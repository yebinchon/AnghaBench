
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_9__ {int info_pool; } ;
typedef TYPE_1__ pack_context_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
struct TYPE_10__ {int elt_size; } ;
typedef TYPE_2__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_array_make (int ,int,int ) ;
 int write_reps_containers (TYPE_1__*,TYPE_2__*,int *,TYPE_2__*,int *) ;

__attribute__((used)) static svn_error_t *
write_property_containers(pack_context_t *context,
                          apr_array_header_t *entries,
                          apr_file_t *temp_file,
                          apr_pool_t *scratch_pool)
{
  apr_array_header_t *new_entries
    = apr_array_make(context->info_pool, 16, entries->elt_size);

  SVN_ERR(write_reps_containers(context, entries, temp_file, new_entries,
                                scratch_pool));

  *entries = *new_entries;

  return SVN_NO_ERROR;
}
