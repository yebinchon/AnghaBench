
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imv {int supported_types; int path; int name; } ;


 int os_free (int ) ;

__attribute__((used)) static void tncs_free_imv(struct tnc_if_imv *imv)
{
 os_free(imv->name);
 os_free(imv->path);
 os_free(imv->supported_types);
}
