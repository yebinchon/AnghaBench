
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_global {int dummy; } ;


 int dpp_global_clear (struct dpp_global*) ;
 int os_free (struct dpp_global*) ;

void dpp_global_deinit(struct dpp_global *dpp)
{
 dpp_global_clear(dpp);
 os_free(dpp);
}
