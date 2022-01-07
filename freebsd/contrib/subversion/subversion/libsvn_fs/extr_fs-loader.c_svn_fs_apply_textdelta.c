
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* apply_textdelta ) (int *,void**,TYPE_2__*,char const*,int *,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int stub1 (int *,void**,TYPE_2__*,char const*,int *,int *,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_parse_hex (int **,int ,char const*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_apply_textdelta(svn_txdelta_window_handler_t *contents_p,
                       void **contents_baton_p, svn_fs_root_t *root,
                       const char *path, const char *base_checksum,
                       const char *result_checksum, apr_pool_t *pool)
{
  svn_checksum_t *base, *result;



  SVN_ERR(svn_checksum_parse_hex(&base, svn_checksum_md5, base_checksum,
                                 pool));
  SVN_ERR(svn_checksum_parse_hex(&result, svn_checksum_md5, result_checksum,
                                 pool));

  return svn_error_trace(root->vtable->apply_textdelta(contents_p,
                                                       contents_baton_p,
                                                       root,
                                                       path,
                                                       base,
                                                       result,
                                                       pool));
}
