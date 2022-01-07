
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_client_conflict_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {char* base_abspath; char* my_abspath; char* their_abspath; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int assert_text_conflict (int *,int *) ;
 TYPE_1__* get_conflict_desc2_t (int *) ;
 scalar_t__ svn_client_conflict_get_operation (int *) ;
 scalar_t__ svn_wc_operation_merge ;

svn_error_t *
svn_client_conflict_text_get_contents(const char **base_abspath,
                                      const char **working_abspath,
                                      const char **incoming_old_abspath,
                                      const char **incoming_new_abspath,
                                      svn_client_conflict_t *conflict,
                                      apr_pool_t *result_pool,
                                      apr_pool_t *scratch_pool)
{
  SVN_ERR(assert_text_conflict(conflict, scratch_pool));

  if (base_abspath)
    {
      if (svn_client_conflict_get_operation(conflict) ==
          svn_wc_operation_merge)
        *base_abspath = ((void*)0);
      else
        *base_abspath = get_conflict_desc2_t(conflict)->base_abspath;
    }

  if (working_abspath)
    *working_abspath = get_conflict_desc2_t(conflict)->my_abspath;

  if (incoming_old_abspath)
    *incoming_old_abspath = get_conflict_desc2_t(conflict)->base_abspath;

  if (incoming_new_abspath)
    *incoming_new_abspath = get_conflict_desc2_t(conflict)->their_abspath;

  return SVN_NO_ERROR;
}
