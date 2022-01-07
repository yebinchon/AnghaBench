
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_size_t ;


 int * SERF_BUCKET_SIMPLE_STRING_LEN (char const*,int,int *) ;
 int serf_bucket_aggregate_append (int *,int *) ;

void
svn_ra_serf__add_cdata_len_buckets(serf_bucket_t *agg_bucket,
                                   serf_bucket_alloc_t *bkt_alloc,
                                   const char *data, apr_size_t len)
{
  const char *end = data + len;
  const char *p = data, *q;
  serf_bucket_t *tmp_bkt;

  while (1)
    {
      q = p;
      while (q < end && *q != '&' && *q != '<' && *q != '>' && *q != '\r')
        q++;


      tmp_bkt = SERF_BUCKET_SIMPLE_STRING_LEN(p, q - p, bkt_alloc);
      serf_bucket_aggregate_append(agg_bucket, tmp_bkt);


      if (q == end)
        break;


      if (*q == '&')
        {
          tmp_bkt = SERF_BUCKET_SIMPLE_STRING_LEN("&amp;", sizeof("&amp;") - 1,
                                                  bkt_alloc);
          serf_bucket_aggregate_append(agg_bucket, tmp_bkt);
        }
      else if (*q == '<')
        {
          tmp_bkt = SERF_BUCKET_SIMPLE_STRING_LEN("&lt;", sizeof("&lt;") - 1,
                                                  bkt_alloc);
          serf_bucket_aggregate_append(agg_bucket, tmp_bkt);
        }
      else if (*q == '>')
        {
          tmp_bkt = SERF_BUCKET_SIMPLE_STRING_LEN("&gt;", sizeof("&gt;") - 1,
                                                  bkt_alloc);
          serf_bucket_aggregate_append(agg_bucket, tmp_bkt);
        }
      else if (*q == '\r')
        {
          tmp_bkt = SERF_BUCKET_SIMPLE_STRING_LEN("&#13;", sizeof("&#13;") - 1,
                                                  bkt_alloc);
          serf_bucket_aggregate_append(agg_bucket, tmp_bkt);
        }

      p = q + 1;
    }
}
