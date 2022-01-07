
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_8__ {int change_set; } ;
struct TYPE_6__ {TYPE_3__ noderev_id; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int rep_write_baton_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int data; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int rep_write_contents ;
 int rep_write_contents_close ;
 int rep_write_get_baton (int **,int *,TYPE_1__*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 TYPE_2__* svn_fs_x__id_unparse (TYPE_3__*,int *) ;
 int svn_fs_x__is_txn (int ) ;
 int * svn_stream_create (int *,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;

__attribute__((used)) static svn_error_t *
set_representation(svn_stream_t **contents_p,
                   svn_fs_t *fs,
                   svn_fs_x__noderev_t *noderev,
                   apr_pool_t *result_pool)
{
  rep_write_baton_t *wb;

  if (! svn_fs_x__is_txn(noderev->noderev_id.change_set))
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Attempted to write to non-transaction '%s'"),
                             svn_fs_x__id_unparse(&noderev->noderev_id,
                                                  result_pool)->data);

  SVN_ERR(rep_write_get_baton(&wb, fs, noderev, result_pool));

  *contents_p = svn_stream_create(wb, result_pool);
  svn_stream_set_write(*contents_p, rep_write_contents);
  svn_stream_set_close(*contents_p, rep_write_contents_close);

  return SVN_NO_ERROR;
}
