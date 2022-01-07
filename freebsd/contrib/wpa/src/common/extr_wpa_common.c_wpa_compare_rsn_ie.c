
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_ie_data {scalar_t__ proto; scalar_t__ pairwise_cipher; scalar_t__ group_cipher; scalar_t__ key_mgmt; scalar_t__ capabilities; scalar_t__ mgmt_group_cipher; } ;


 scalar_t__ os_memcmp (int const*,int const*,size_t) ;
 scalar_t__ wpa_parse_wpa_ie_rsn (int const*,size_t,struct wpa_ie_data*) ;

int wpa_compare_rsn_ie(int ft_initial_assoc,
         const u8 *ie1, size_t ie1len,
         const u8 *ie2, size_t ie2len)
{
 if (ie1 == ((void*)0) || ie2 == ((void*)0))
  return -1;

 if (ie1len == ie2len && os_memcmp(ie1, ie2, ie1len) == 0)
  return 0;
 return -1;
}
