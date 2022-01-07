
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_history_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int revision; int path; } ;
typedef TYPE_2__ base_history_data_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,int ) ;

__attribute__((used)) static svn_error_t *
base_history_location(const char **path,
                      svn_revnum_t *revision,
                      svn_fs_history_t *history,
                      apr_pool_t *pool)
{
  base_history_data_t *bhd = history->fsap_data;

  *path = apr_pstrdup(pool, bhd->path);
  *revision = bhd->revision;
  return SVN_NO_ERROR;
}
