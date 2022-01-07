
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rss_config {struct rss_config* rss_bucket_map; } ;


 int free (struct rss_config*) ;

void
rss_config_free(struct rss_config *rc)
{

 if ((rc != ((void*)0)) && rc->rss_bucket_map)
  free(rc->rss_bucket_map);
 if (rc != ((void*)0))
  free(rc);
}
