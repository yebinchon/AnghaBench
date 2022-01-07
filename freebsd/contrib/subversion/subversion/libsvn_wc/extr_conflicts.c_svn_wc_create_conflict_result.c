
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * merged_value; int save_merged; int merged_file; int choice; } ;
typedef TYPE_1__ svn_wc_conflict_result_t ;
typedef int svn_wc_conflict_choice_t ;
typedef int apr_pool_t ;


 int FALSE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;

svn_wc_conflict_result_t *
svn_wc_create_conflict_result(svn_wc_conflict_choice_t choice,
                              const char *merged_file,
                              apr_pool_t *pool)
{
  svn_wc_conflict_result_t *result = apr_pcalloc(pool, sizeof(*result));
  result->choice = choice;
  result->merged_file = apr_pstrdup(pool, merged_file);
  result->save_merged = FALSE;
  result->merged_value = ((void*)0);



  return result;
}
