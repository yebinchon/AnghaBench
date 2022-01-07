
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rss_config {int rss_nbuckets; } ;



int
rss_config_get_bucket_count(struct rss_config *rc)
{

 if (rc == ((void*)0))
  return (-1);
 return (rc->rss_nbuckets);
}
