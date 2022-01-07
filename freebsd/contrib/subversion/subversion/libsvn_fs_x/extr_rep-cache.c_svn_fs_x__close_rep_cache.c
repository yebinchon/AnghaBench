
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rep_cache_db_opened; int * rep_cache_db; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_5__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_sqlite__close (int *) ;

svn_error_t *
svn_fs_x__close_rep_cache(svn_fs_t *fs)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;

  if (ffd->rep_cache_db)
    {
      SVN_ERR(svn_sqlite__close(ffd->rep_cache_db));
      ffd->rep_cache_db = ((void*)0);
      ffd->rep_cache_db_opened = 0;
    }

  return SVN_NO_ERROR;
}
