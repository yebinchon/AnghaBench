
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int diff_mergeinfo_props (int *,int *,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int svn_mergeinfo_merge2 (int ,int ,int *,int *) ;
 int svn_mergeinfo_parse (int *,int ,int *) ;
 int svn_mergeinfo_remove2 (int *,int ,int ,int ,int *,int *) ;
 int svn_mergeinfo_to_string (TYPE_1__**,int ,int *) ;

__attribute__((used)) static svn_error_t *
combine_forked_mergeinfo_props(const svn_string_t **output,
                               const svn_string_t *from_prop_val,
                               const svn_string_t *working_prop_val,
                               const svn_string_t *to_prop_val,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  svn_mergeinfo_t from_mergeinfo, l_deleted, l_added, r_deleted, r_added;
  svn_string_t *mergeinfo_string;


  SVN_ERR(diff_mergeinfo_props(&l_deleted, &l_added, from_prop_val,
                               working_prop_val, scratch_pool));
  SVN_ERR(diff_mergeinfo_props(&r_deleted, &r_added, from_prop_val,
                               to_prop_val, scratch_pool));
  SVN_ERR(svn_mergeinfo_merge2(l_deleted, r_deleted,
                               scratch_pool, scratch_pool));
  SVN_ERR(svn_mergeinfo_merge2(l_added, r_added,
                               scratch_pool, scratch_pool));


  SVN_ERR(svn_mergeinfo_parse(&from_mergeinfo, from_prop_val->data,
                              scratch_pool));
  SVN_ERR(svn_mergeinfo_merge2(from_mergeinfo, l_added,
                               scratch_pool, scratch_pool));

  SVN_ERR(svn_mergeinfo_remove2(&from_mergeinfo, l_deleted, from_mergeinfo,
                                TRUE, scratch_pool, scratch_pool));

  SVN_ERR(svn_mergeinfo_to_string(&mergeinfo_string, from_mergeinfo,
                                  result_pool));
  *output = mergeinfo_string;
  return SVN_NO_ERROR;
}
