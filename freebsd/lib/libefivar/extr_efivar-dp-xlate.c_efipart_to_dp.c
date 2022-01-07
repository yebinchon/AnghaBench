
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmesh {int dummy; } ;
typedef int efidp ;


 int ENOENT ;
 int build_dp (char*,char*,int *) ;
 int dev ;
 char* find_efi_on_zfsroot (int ) ;
 char* find_geom_efi_on_root (struct gmesh*) ;
 int free (char*) ;

__attribute__((used)) static int
efipart_to_dp(struct gmesh *mesh, char *path, efidp *dp)
{
 char *efimedia = ((void*)0);
 int rv;

 efimedia = find_geom_efi_on_root(mesh);




 if (efimedia == ((void*)0)) {
  rv = ENOENT;
  goto errout;
 }

 rv = build_dp(efimedia, path + 1, dp);
errout:
 free(efimedia);

 return rv;
}
