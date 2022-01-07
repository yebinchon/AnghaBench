
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_AUTH_ALG_FILS ;
 int WPA_AUTH_ALG_FILS_SK_PFS ;

__attribute__((used)) static inline int wpa_auth_alg_fils(int alg)
{
 return !!(alg & (WPA_AUTH_ALG_FILS | WPA_AUTH_ALG_FILS_SK_PFS));
}
