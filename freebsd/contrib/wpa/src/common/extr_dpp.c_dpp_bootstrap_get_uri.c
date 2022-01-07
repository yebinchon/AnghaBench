
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_global {int dummy; } ;
struct dpp_bootstrap_info {char const* uri; } ;


 struct dpp_bootstrap_info* dpp_bootstrap_get_id (struct dpp_global*,unsigned int) ;

const char * dpp_bootstrap_get_uri(struct dpp_global *dpp, unsigned int id)
{
 struct dpp_bootstrap_info *bi;

 bi = dpp_bootstrap_get_id(dpp, id);
 if (!bi)
  return ((void*)0);
 return bi->uri;
}
