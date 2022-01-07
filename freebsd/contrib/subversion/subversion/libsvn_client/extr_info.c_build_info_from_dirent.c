
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_lock_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int size; int last_author; int time; int created_rev; int kind; } ;
typedef TYPE_1__ svn_dirent_t ;
struct TYPE_9__ {int * wc_info; int size; int * lock; int last_changed_author; int last_changed_date; int last_changed_rev; int repos_root_URL; int repos_UUID; int kind; int rev; int URL; } ;
typedef TYPE_2__ svn_client_info2_t ;
struct TYPE_10__ {int repos_root_url; int repos_uuid; int rev; int url; } ;
typedef TYPE_3__ svn_client__pathrev_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;

__attribute__((used)) static svn_error_t *
build_info_from_dirent(svn_client_info2_t **info,
                       const svn_dirent_t *dirent,
                       svn_lock_t *lock,
                       const svn_client__pathrev_t *pathrev,
                       apr_pool_t *pool)
{
  svn_client_info2_t *tmpinfo = apr_pcalloc(pool, sizeof(*tmpinfo));

  tmpinfo->URL = pathrev->url;
  tmpinfo->rev = pathrev->rev;
  tmpinfo->kind = dirent->kind;
  tmpinfo->repos_UUID = pathrev->repos_uuid;
  tmpinfo->repos_root_URL = pathrev->repos_root_url;
  tmpinfo->last_changed_rev = dirent->created_rev;
  tmpinfo->last_changed_date = dirent->time;
  tmpinfo->last_changed_author = dirent->last_author;
  tmpinfo->lock = lock;
  tmpinfo->size = dirent->size;

  tmpinfo->wc_info = ((void*)0);

  *info = tmpinfo;
  return SVN_NO_ERROR;
}
