
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* path; TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_8__ {TYPE_5__* bdb; } ;
typedef TYPE_3__ base_fs_data_t ;
struct TYPE_9__ {TYPE_1__* error_info; } ;
struct TYPE_6__ {int * pending_errors; } ;


 int * SVN_NO_ERROR ;
 int _ (char const*) ;
 int svn_error_clear (int *) ;
 int * svn_fs_bdb__dberrf (TYPE_5__*,int,int ,char*,int ) ;

svn_error_t *
svn_fs_bdb__wrap_db(svn_fs_t *fs, const char *operation, int db_err)
{
  base_fs_data_t *bfd = fs->fsap_data;

  if (! db_err)
    {
      svn_error_clear(bfd->bdb->error_info->pending_errors);
      bfd->bdb->error_info->pending_errors = ((void*)0);
      return SVN_NO_ERROR;
    }

  bfd = fs->fsap_data;
  return svn_fs_bdb__dberrf
    (bfd->bdb, db_err,
     _("Berkeley DB error for filesystem '%s' while %s:\n"),
     fs->path ? fs->path : "(none)", _(operation));
}
