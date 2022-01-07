
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct zfsmount {int dummy; } ;
struct stat {size_t st_size; } ;
struct TYPE_8__ {char* spa_name; } ;
typedef TYPE_1__ spa_t ;
typedef int intmax_t ;
typedef int dnode_phys_t ;
struct TYPE_9__ {int devpath; TYPE_1__* devdata; } ;
typedef TYPE_2__ dev_info_t ;
typedef int EFI_STATUS ;
typedef int CHAR16 ;


 int DPRINTF (char*,char const*,...) ;
 int EFI_INVALID_PARAMETER ;
 int EFI_NOT_FOUND ;
 int EFI_SUCCESS ;
 int ENOENT ;
 int dnode_read (TYPE_1__*,int *,int ,void*,size_t) ;
 int * efi_devpath_name (int ) ;
 int efi_free_devpath_name (int *) ;
 int free (void*) ;
 void* malloc (size_t) ;
 int printf (char*,char const*,...) ;
 int zfs_dnode_stat (TYPE_1__*,int *,struct stat*) ;
 int zfs_lookup (struct zfsmount*,char const*,int *) ;
 int zfs_mount (TYPE_1__*,int ,struct zfsmount*) ;
 int zfs_spa_init (TYPE_1__*) ;

__attribute__((used)) static EFI_STATUS
load(const char *filepath, dev_info_t *devinfo, void **bufp, size_t *bufsize)
{
 spa_t *spa;
 struct zfsmount zmount;
 dnode_phys_t dn;
 struct stat st;
 int err;
 void *buf;

 spa = devinfo->devdata;
 if ((err = zfs_spa_init(spa)) != 0) {
  DPRINTF("Failed to load pool '%s' (%d)\n", spa->spa_name, err);
  return (EFI_NOT_FOUND);
 }

 if ((err = zfs_mount(spa, 0, &zmount)) != 0) {
  DPRINTF("Failed to mount pool '%s' (%d)\n", spa->spa_name, err);
  return (EFI_NOT_FOUND);
 }

 if ((err = zfs_lookup(&zmount, filepath, &dn)) != 0) {
  if (err == ENOENT) {
   DPRINTF("Failed to find '%s' on pool '%s' (%d)\n",
       filepath, spa->spa_name, err);
   return (EFI_NOT_FOUND);
  }
  printf("Failed to lookup '%s' on pool '%s' (%d)\n", filepath,
      spa->spa_name, err);
  return (EFI_INVALID_PARAMETER);
 }

 if ((err = zfs_dnode_stat(spa, &dn, &st)) != 0) {
  printf("Failed to stat '%s' on pool '%s' (%d)\n", filepath,
      spa->spa_name, err);
  return (EFI_INVALID_PARAMETER);
 }

 buf = malloc(st.st_size);
 if (buf == ((void*)0)) {
  printf("Failed to allocate load buffer %jd for pool '%s' for '%s' ",
      (intmax_t)st.st_size, spa->spa_name, filepath);
  return (EFI_INVALID_PARAMETER);
 }

 if ((err = dnode_read(spa, &dn, 0, buf, st.st_size)) != 0) {
  printf("Failed to read node from %s (%d)\n", spa->spa_name,
      err);
  free(buf);
  return (EFI_INVALID_PARAMETER);
 }

 *bufsize = st.st_size;
 *bufp = buf;

 return (EFI_SUCCESS);
}
