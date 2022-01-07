
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_rsn {scalar_t__ auth; scalar_t__ igtk_len; int igtk; scalar_t__ mgtk_len; int mgtk; } ;


 int os_memset (int ,int ,int) ;
 int wpa_deinit (scalar_t__) ;

__attribute__((used)) static void mesh_rsn_deinit(struct mesh_rsn *rsn)
{
 os_memset(rsn->mgtk, 0, sizeof(rsn->mgtk));
 rsn->mgtk_len = 0;
 os_memset(rsn->igtk, 0, sizeof(rsn->igtk));
 rsn->igtk_len = 0;
 if (rsn->auth)
  wpa_deinit(rsn->auth);
}
