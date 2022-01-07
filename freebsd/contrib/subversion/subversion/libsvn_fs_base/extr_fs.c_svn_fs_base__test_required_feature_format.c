
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int format; } ;
typedef TYPE_2__ base_fs_data_t ;


 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*,int,int ,int) ;

svn_error_t *
svn_fs_base__test_required_feature_format(svn_fs_t *fs,
                                          const char *feature,
                                          int requires)
{
  base_fs_data_t *bfd = fs->fsap_data;
  if (bfd->format < requires)
    return svn_error_createf
      (SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
       _("The '%s' feature requires version %d of the filesystem schema; "
         "filesystem '%s' uses only version %d"),
       feature, requires, fs->path, bfd->format);
  return SVN_NO_ERROR;
}
