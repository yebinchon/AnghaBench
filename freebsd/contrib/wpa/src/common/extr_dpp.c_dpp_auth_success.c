
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_authentication {int auth_success; int k2; int k1; scalar_t__ Lx_len; int Lx; scalar_t__ Nx_len; int Nx; scalar_t__ Mx_len; int Mx; } ;


 int MSG_DEBUG ;
 int os_memset (int ,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void dpp_auth_success(struct dpp_authentication *auth)
{
 wpa_printf(MSG_DEBUG,
     "DPP: Authentication success - clear temporary keys");
 os_memset(auth->Mx, 0, sizeof(auth->Mx));
 auth->Mx_len = 0;
 os_memset(auth->Nx, 0, sizeof(auth->Nx));
 auth->Nx_len = 0;
 os_memset(auth->Lx, 0, sizeof(auth->Lx));
 auth->Lx_len = 0;
 os_memset(auth->k1, 0, sizeof(auth->k1));
 os_memset(auth->k2, 0, sizeof(auth->k2));

 auth->auth_success = 1;
}
