
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_skel_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int kind; int digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int apr_pool_t ;


 int APR_MD5_DIGESTSIZE ;
 int APR_SHA1_DIGESTSIZE ;
 int * SVN_NO_ERROR ;
 int * skel_err (char*) ;


 int * svn_skel__make_empty_list (int *) ;
 int * svn_skel__mem_atom (int ,int ,int *) ;
 int svn_skel__prepend (int *,int *) ;
 int * svn_skel__str_atom (char*,int *) ;

__attribute__((used)) static svn_error_t *
prepend_checksum(svn_skel_t *skel,
                 svn_checksum_t *checksum,
                 apr_pool_t *pool)
{
  svn_skel_t *checksum_skel = svn_skel__make_empty_list(pool);

  switch (checksum->kind)
    {
    case 129:
      svn_skel__prepend(svn_skel__mem_atom(checksum->digest,
                                           APR_MD5_DIGESTSIZE, pool),
                        checksum_skel);
      svn_skel__prepend(svn_skel__str_atom("md5", pool), checksum_skel);
      break;

    case 128:
      svn_skel__prepend(svn_skel__mem_atom(checksum->digest,
                                           APR_SHA1_DIGESTSIZE, pool),
                        checksum_skel);
      svn_skel__prepend(svn_skel__str_atom("sha1", pool), checksum_skel);
      break;

    default:
      return skel_err("checksum");
    }
  svn_skel__prepend(checksum_skel, skel);

  return SVN_NO_ERROR;
}
