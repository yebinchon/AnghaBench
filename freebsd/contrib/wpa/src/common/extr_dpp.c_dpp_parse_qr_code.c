
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_bootstrap_info {int type; } ;


 int DPP_BOOTSTRAP_QR_CODE ;
 struct dpp_bootstrap_info* dpp_parse_uri (char const*) ;

struct dpp_bootstrap_info * dpp_parse_qr_code(const char *uri)
{
 struct dpp_bootstrap_info *bi;

 bi = dpp_parse_uri(uri);
 if (bi)
  bi->type = DPP_BOOTSTRAP_QR_CODE;
 return bi;
}
