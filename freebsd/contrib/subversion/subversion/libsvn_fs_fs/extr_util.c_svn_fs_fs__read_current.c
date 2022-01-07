
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_revnum_t ;
struct TYPE_8__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_9__ {scalar_t__ format; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 scalar_t__ SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ svn__base36toui64 (char const**,char const*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_fs__path_current (TYPE_2__*,int *) ;
 int svn_fs_fs__read_content (TYPE_1__**,int ,int *) ;
 int svn_revnum_parse (int *,int ,char const**) ;

svn_error_t *
svn_fs_fs__read_current(svn_revnum_t *rev,
                        apr_uint64_t *next_node_id,
                        apr_uint64_t *next_copy_id,
                        svn_fs_t *fs,
                        apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_stringbuf_t *content;

  SVN_ERR(svn_fs_fs__read_content(&content,
                                  svn_fs_fs__path_current(fs, pool),
                                  pool));

  if (ffd->format >= SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT)
    {





      SVN_ERR(svn_revnum_parse(rev, content->data, ((void*)0)));

      *next_node_id = 0;
      *next_copy_id = 0;
    }
  else
    {
      const char *str;

      SVN_ERR(svn_revnum_parse(rev, content->data, &str));
      if (*str != ' ')
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Corrupt 'current' file"));

      *next_node_id = svn__base36toui64(&str, str + 1);
      if (*str != ' ')
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Corrupt 'current' file"));

      *next_copy_id = svn__base36toui64(&str, str + 1);
      if (*str != '\n')
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Corrupt 'current' file"));
    }

  return SVN_NO_ERROR;
}
