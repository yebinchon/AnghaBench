
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ev_token_bucket_cfg {int dummy; } ;


 int mm_free (struct ev_token_bucket_cfg*) ;

void
ev_token_bucket_cfg_free(struct ev_token_bucket_cfg *cfg)
{
 mm_free(cfg);
}
