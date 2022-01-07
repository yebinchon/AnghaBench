
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int *,int ,int ,int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int apr_pstrdup (int *,char const*) ;
 int svn_config_dup (int **,int *,int *) ;
 int * svn_hash__make (int *) ;

svn_error_t *
svn_config_copy_config(apr_hash_t **cfg_hash,
                       apr_hash_t *src_hash,
                       apr_pool_t *pool)
{
  apr_hash_index_t *cidx;

  *cfg_hash = svn_hash__make(pool);
  for (cidx = apr_hash_first(pool, src_hash);
       cidx != ((void*)0);
       cidx = apr_hash_next(cidx))
  {
    const void *ckey;
    void *cval;
    apr_ssize_t ckeyLength;
    svn_config_t * srcconfig;
    svn_config_t * destconfig;

    apr_hash_this(cidx, &ckey, &ckeyLength, &cval);
    srcconfig = cval;

    SVN_ERR(svn_config_dup(&destconfig, srcconfig, pool));

    apr_hash_set(*cfg_hash,
                 apr_pstrdup(pool, (const char*)ckey),
                 ckeyLength, destconfig);
  }

  return SVN_NO_ERROR;
}
