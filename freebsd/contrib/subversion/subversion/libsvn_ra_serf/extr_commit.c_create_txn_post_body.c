
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * SERF_BUCKET_SIMPLE_STRING (char*,int *) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend (int *,int *) ;
 int svn_skel__prepend_str (char*,int *,int *) ;
 TYPE_1__* svn_skel__unparse (int *,int *) ;
 int svn_skel__unparse_proplist (int **,int *,int *) ;

__attribute__((used)) static svn_error_t *
create_txn_post_body(serf_bucket_t **body_bkt,
                     void *baton,
                     serf_bucket_alloc_t *alloc,
                     apr_pool_t *pool ,
                     apr_pool_t *scratch_pool)
{
  apr_hash_t *revprops = baton;
  svn_skel_t *request_skel;
  svn_stringbuf_t *skel_str;

  request_skel = svn_skel__make_empty_list(pool);
  if (revprops)
    {
      svn_skel_t *proplist_skel;

      SVN_ERR(svn_skel__unparse_proplist(&proplist_skel, revprops, pool));
      svn_skel__prepend(proplist_skel, request_skel);
      svn_skel__prepend_str("create-txn-with-props", request_skel, pool);
      skel_str = svn_skel__unparse(request_skel, pool);
      *body_bkt = SERF_BUCKET_SIMPLE_STRING(skel_str->data, alloc);
    }
  else
    {
      *body_bkt = SERF_BUCKET_SIMPLE_STRING("( create-txn )", alloc);
    }

  return SVN_NO_ERROR;
}
