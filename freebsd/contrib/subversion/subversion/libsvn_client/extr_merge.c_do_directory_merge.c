
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
typedef int svn_diff_tree_processor_t ;
typedef int svn_depth_t ;
typedef int svn_client__merge_path_t ;
typedef int svn_boolean_t ;
typedef int single_range_conflict_report_t ;
typedef int merge_source_t ;
struct TYPE_7__ {int * nodes_with_mergeinfo; } ;
struct TYPE_8__ {TYPE_1__ notify_begin; } ;
typedef TYPE_2__ merge_cmd_baton_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 scalar_t__ HONOR_MERGEINFO (TYPE_2__*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_array_make (int *,int,int) ;
 int do_mergeinfo_aware_dir_merge (int ,int **,int const*,char const*,int *,int const*,int ,int ,TYPE_2__*,int *,int *) ;
 int do_mergeinfo_unaware_dir_merge (int **,int const*,char const*,int *,int const*,int ,TYPE_2__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
do_directory_merge(svn_mergeinfo_catalog_t result_catalog,
                   single_range_conflict_report_t **conflict_report,
                   const merge_source_t *source,
                   const char *target_abspath,
                   const svn_diff_tree_processor_t *processor,
                   svn_depth_t depth,
                   svn_boolean_t squelch_mergeinfo_notifications,
                   merge_cmd_baton_t *merge_b,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  apr_array_header_t *children_with_mergeinfo;



  children_with_mergeinfo =
    apr_array_make(scratch_pool, 16, sizeof(svn_client__merge_path_t *));


  merge_b->notify_begin.nodes_with_mergeinfo = children_with_mergeinfo;



  if (HONOR_MERGEINFO(merge_b))
    SVN_ERR(do_mergeinfo_aware_dir_merge(result_catalog, conflict_report,
                                         source, target_abspath,
                                         children_with_mergeinfo,
                                         processor, depth,
                                         squelch_mergeinfo_notifications,
                                         merge_b, result_pool, scratch_pool));
  else
    SVN_ERR(do_mergeinfo_unaware_dir_merge(conflict_report,
                                           source, target_abspath,
                                           children_with_mergeinfo,
                                           processor, depth,
                                           merge_b, result_pool, scratch_pool));

  merge_b->notify_begin.nodes_with_mergeinfo = ((void*)0);

  return SVN_NO_ERROR;
}
