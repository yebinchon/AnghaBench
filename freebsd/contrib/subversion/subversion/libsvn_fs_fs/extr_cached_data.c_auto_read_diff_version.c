
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_8__ {int ver; int current; scalar_t__ chunk_index; TYPE_2__* sfile; int start; } ;
typedef TYPE_3__ rep_state_t ;
typedef int buf ;
typedef int apr_pool_t ;
struct TYPE_7__ {TYPE_1__* rfile; } ;
struct TYPE_6__ {int file; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int rs_aligned_seek (TYPE_3__*,int *,int ,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_io_file_read_full2 (int ,char*,int,int *,int *,int *) ;

__attribute__((used)) static svn_error_t*
auto_read_diff_version(rep_state_t *rs, apr_pool_t *pool)
{
  if (rs->ver == -1)
    {
      char buf[4];
      SVN_ERR(rs_aligned_seek(rs, ((void*)0), rs->start, pool));
      SVN_ERR(svn_io_file_read_full2(rs->sfile->rfile->file, buf,
                                     sizeof(buf), ((void*)0), ((void*)0), pool));


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
