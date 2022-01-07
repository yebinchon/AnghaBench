
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int * data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * svn_error_trace (int ) ;
 TYPE_1__* svn_skel__unparse (int *,int *) ;
 int svn_skel__unparse_iproplist (int **,int const*,int *,int *) ;
 int svn_sqlite__bind_blob (int *,int,int *,int ) ;

svn_error_t *
svn_sqlite__bind_iprops(svn_sqlite__stmt_t *stmt,
                        int slot,
                        const apr_array_header_t *inherited_props,
                        apr_pool_t *scratch_pool)
{
  svn_skel_t *skel;
  svn_stringbuf_t *properties;

  if (inherited_props == ((void*)0))
    return svn_error_trace(svn_sqlite__bind_blob(stmt, slot, ((void*)0), 0));

  SVN_ERR(svn_skel__unparse_iproplist(&skel, inherited_props,
                                      scratch_pool, scratch_pool));
  properties = svn_skel__unparse(skel, scratch_pool);
  return svn_error_trace(svn_sqlite__bind_blob(stmt,
                                               slot,
                                               properties->data,
                                               properties->len));
}
