
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {int ver; int current; scalar_t__ chunk_index; TYPE_1__* sfile; int start; } ;
typedef TYPE_2__ rep_state_t ;
typedef int buf ;
typedef int apr_pool_t ;
struct TYPE_4__ {int rfile; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_x__rev_file_read (int ,char*,int) ;
 int svn_fs_x__rev_file_seek (int ,int *,int ) ;

__attribute__((used)) static svn_error_t*
auto_read_diff_version(rep_state_t *rs,
                       apr_pool_t *scratch_pool)
{
  if (rs->ver == -1)
    {
      char buf[4];
      SVN_ERR(svn_fs_x__rev_file_seek(rs->sfile->rfile, ((void*)0), rs->start));
      SVN_ERR(svn_fs_x__rev_file_read(rs->sfile->rfile, buf, sizeof(buf)));


      if (! ((buf[0] == 'S') && (buf[1] == 'V') && (buf[2] == 'N')))
        return svn_error_create
          (SVN_ERR_FS_CORRUPT, ((void*)0),
           _("Malformed svndiff data in representation"));
      rs->ver = buf[3];

      rs->chunk_index = 0;
      rs->current = 4;
    }

  return SVN_NO_ERROR;
}
