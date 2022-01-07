
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dpp_curve_params {size_t prime_len; int ike_group; int name; } ;
typedef int EVP_PKEY ;
typedef int EC_GROUP ;


 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_by_curve_name (int ) ;
 int OBJ_txt2nid (int ) ;
 int * dpp_set_pubkey_point_group (int *,int const*,int const*,size_t) ;
 int * pkex_init_x_bp_p256r1 ;
 int * pkex_init_x_bp_p384r1 ;
 int * pkex_init_x_bp_p512r1 ;
 int * pkex_init_x_p256 ;
 int * pkex_init_x_p384 ;
 int * pkex_init_x_p521 ;
 int * pkex_init_y_bp_p256r1 ;
 int * pkex_init_y_bp_p384r1 ;
 int * pkex_init_y_bp_p512r1 ;
 int * pkex_init_y_p256 ;
 int * pkex_init_y_p384 ;
 int * pkex_init_y_p521 ;
 int * pkex_resp_x_bp_p256r1 ;
 int * pkex_resp_x_bp_p384r1 ;
 int * pkex_resp_x_bp_p512r1 ;
 int * pkex_resp_x_p256 ;
 int * pkex_resp_x_p384 ;
 int * pkex_resp_x_p521 ;
 int * pkex_resp_y_bp_p256r1 ;
 int * pkex_resp_y_bp_p384r1 ;
 int * pkex_resp_y_bp_p512r1 ;
 int * pkex_resp_y_p256 ;
 int * pkex_resp_y_p384 ;
 int * pkex_resp_y_p521 ;

__attribute__((used)) static EVP_PKEY * dpp_pkex_get_role_elem(const struct dpp_curve_params *curve,
      int init)
{
 EC_GROUP *group;
 size_t len = curve->prime_len;
 const u8 *x, *y;
 EVP_PKEY *res;

 switch (curve->ike_group) {
 case 19:
  x = init ? pkex_init_x_p256 : pkex_resp_x_p256;
  y = init ? pkex_init_y_p256 : pkex_resp_y_p256;
  break;
 case 20:
  x = init ? pkex_init_x_p384 : pkex_resp_x_p384;
  y = init ? pkex_init_y_p384 : pkex_resp_y_p384;
  break;
 case 21:
  x = init ? pkex_init_x_p521 : pkex_resp_x_p521;
  y = init ? pkex_init_y_p521 : pkex_resp_y_p521;
  break;
 case 28:
  x = init ? pkex_init_x_bp_p256r1 : pkex_resp_x_bp_p256r1;
  y = init ? pkex_init_y_bp_p256r1 : pkex_resp_y_bp_p256r1;
  break;
 case 29:
  x = init ? pkex_init_x_bp_p384r1 : pkex_resp_x_bp_p384r1;
  y = init ? pkex_init_y_bp_p384r1 : pkex_resp_y_bp_p384r1;
  break;
 case 30:
  x = init ? pkex_init_x_bp_p512r1 : pkex_resp_x_bp_p512r1;
  y = init ? pkex_init_y_bp_p512r1 : pkex_resp_y_bp_p512r1;
  break;
 default:
  return ((void*)0);
 }

 group = EC_GROUP_new_by_curve_name(OBJ_txt2nid(curve->name));
 if (!group)
  return ((void*)0);
 res = dpp_set_pubkey_point_group(group, x, y, len);
 EC_GROUP_free(group);
 return res;
}
