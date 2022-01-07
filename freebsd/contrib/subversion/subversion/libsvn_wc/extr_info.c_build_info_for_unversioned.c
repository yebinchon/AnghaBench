
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* recorded_size; int depth; void* copyfrom_rev; } ;
typedef TYPE_1__ svn_wc_info_t ;
struct TYPE_5__ {TYPE_1__* wc_info; int * lock; int * last_changed_author; scalar_t__ last_changed_date; void* last_changed_rev; void* size; int kind; void* rev; int * repos_root_URL; int * repos_UUID; int * URL; } ;
typedef TYPE_2__ svn_wc__info2_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 void* SVN_INVALID_FILESIZE ;
 void* SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* apr_pcalloc (int *,int) ;
 int svn_depth_unknown ;
 int svn_node_none ;

__attribute__((used)) static svn_error_t *
build_info_for_unversioned(svn_wc__info2_t **info,
                           apr_pool_t *pool)
{
  svn_wc__info2_t *tmpinfo = apr_pcalloc(pool, sizeof(*tmpinfo));
  svn_wc_info_t *wc_info = apr_pcalloc(pool, sizeof (*wc_info));

  tmpinfo->URL = ((void*)0);
  tmpinfo->repos_UUID = ((void*)0);
  tmpinfo->repos_root_URL = ((void*)0);
  tmpinfo->rev = SVN_INVALID_REVNUM;
  tmpinfo->kind = svn_node_none;
  tmpinfo->size = SVN_INVALID_FILESIZE;
  tmpinfo->last_changed_rev = SVN_INVALID_REVNUM;
  tmpinfo->last_changed_date = 0;
  tmpinfo->last_changed_author = ((void*)0);
  tmpinfo->lock = ((void*)0);

  tmpinfo->wc_info = wc_info;

  wc_info->copyfrom_rev = SVN_INVALID_REVNUM;
  wc_info->depth = svn_depth_unknown;
  wc_info->recorded_size = SVN_INVALID_FILESIZE;

  *info = tmpinfo;
  return SVN_NO_ERROR;
}
