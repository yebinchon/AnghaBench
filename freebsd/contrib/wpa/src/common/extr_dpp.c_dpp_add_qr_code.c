
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_global {int bootstrap; } ;
struct dpp_bootstrap_info {int list; int id; } ;


 int dl_list_add (int *,int *) ;
 int dpp_next_id (struct dpp_global*) ;
 struct dpp_bootstrap_info* dpp_parse_qr_code (char const*) ;

struct dpp_bootstrap_info * dpp_add_qr_code(struct dpp_global *dpp,
         const char *uri)
{
 struct dpp_bootstrap_info *bi;

 if (!dpp)
  return ((void*)0);

 bi = dpp_parse_qr_code(uri);
 if (!bi)
  return ((void*)0);

 bi->id = dpp_next_id(dpp);
 dl_list_add(&dpp->bootstrap, &bi->list);
 return bi;
}
