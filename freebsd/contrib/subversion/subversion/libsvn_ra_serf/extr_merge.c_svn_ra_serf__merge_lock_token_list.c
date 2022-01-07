
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; void const* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_VA_NULL ;
 int SVN_XML_NAMESPACE ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int svn_ra_serf__add_cdata_len_buckets (int *,int *,void const*,int ) ;
 int svn_ra_serf__add_close_tag_buckets (int *,int *,char*) ;
 int svn_ra_serf__add_open_tag_buckets (int *,int *,char*,char*,...) ;
 int svn_ra_serf__add_tag_buckets (int *,char*,void*,int *) ;
 int svn_relpath_skip_ancestor (char const*,void const*) ;

void
svn_ra_serf__merge_lock_token_list(apr_hash_t *lock_tokens,
                                   const char *parent,
                                   serf_bucket_t *body,
                                   serf_bucket_alloc_t *alloc,
                                   apr_pool_t *pool)
{
  apr_hash_index_t *hi;

  if (!lock_tokens || apr_hash_count(lock_tokens) == 0)
    return;

  svn_ra_serf__add_open_tag_buckets(body, alloc,
                                    "S:lock-token-list",
                                    "xmlns:S", SVN_XML_NAMESPACE,
                                    SVN_VA_NULL);

  for (hi = apr_hash_first(pool, lock_tokens);
       hi;
       hi = apr_hash_next(hi))
    {
      const void *key;
      apr_ssize_t klen;
      void *val;
      svn_string_t path;

      apr_hash_this(hi, &key, &klen, &val);

      path.data = key;
      path.len = klen;

      if (parent && !svn_relpath_skip_ancestor(parent, key))
        continue;

      svn_ra_serf__add_open_tag_buckets(body, alloc, "S:lock", SVN_VA_NULL);

      svn_ra_serf__add_open_tag_buckets(body, alloc, "lock-path", SVN_VA_NULL);
      svn_ra_serf__add_cdata_len_buckets(body, alloc, path.data, path.len);
      svn_ra_serf__add_close_tag_buckets(body, alloc, "lock-path");

      svn_ra_serf__add_tag_buckets(body, "lock-token", val, alloc);

      svn_ra_serf__add_close_tag_buckets(body, alloc, "S:lock");
    }

  svn_ra_serf__add_close_tag_buckets(body, alloc, "S:lock-token-list");
}
