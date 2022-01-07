
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;


 int SVN_VA_NULL ;
 int strlen (char const*) ;
 int svn_ra_serf__add_cdata_len_buckets (int *,int *,char const*,int ) ;
 int svn_ra_serf__add_close_tag_buckets (int *,int *,char const*) ;
 int svn_ra_serf__add_open_tag_buckets (int *,int *,char const*,int ) ;

void svn_ra_serf__add_tag_buckets(serf_bucket_t *agg_bucket, const char *tag,
                                  const char *value,
                                  serf_bucket_alloc_t *bkt_alloc)
{
  svn_ra_serf__add_open_tag_buckets(agg_bucket, bkt_alloc, tag, SVN_VA_NULL);

  if (value)
    {
      svn_ra_serf__add_cdata_len_buckets(agg_bucket, bkt_alloc,
                                         value, strlen(value));
    }

  svn_ra_serf__add_close_tag_buckets(agg_bucket, bkt_alloc, tag);
}
