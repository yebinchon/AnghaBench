
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rss_config {int rss_nbuckets; int * rss_bucket_map; } ;
typedef scalar_t__ rss_bucket_type_t ;
typedef int cpuset_t ;


 int CPU_SET (int ,int *) ;
 int CPU_ZERO (int *) ;
 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ RSS_BUCKET_TYPE_MAX ;
 scalar_t__ RSS_BUCKET_TYPE_NONE ;
 int errno ;

int
rss_get_bucket_cpuset(struct rss_config *rc, rss_bucket_type_t btype,
    int bucket, cpuset_t *cs)
{

 if (bucket < 0 || bucket >= rc->rss_nbuckets) {
  errno = EINVAL;
  return (-1);
 }






 if (btype <= RSS_BUCKET_TYPE_NONE || btype > RSS_BUCKET_TYPE_MAX) {
  errno = ENOTSUP;
  return (-1);
 }

 CPU_ZERO(cs);
 CPU_SET(rc->rss_bucket_map[bucket], cs);

 return (0);
}
