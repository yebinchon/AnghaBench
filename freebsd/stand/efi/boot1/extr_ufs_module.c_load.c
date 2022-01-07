
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ufs_ino_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int devpath; } ;
typedef TYPE_1__ dev_info_t ;
typedef int EFI_STATUS ;
typedef int CHAR16 ;


 int DPRINTF (char*,...) ;
 int EFI_INVALID_PARAMETER ;
 int EFI_NOT_FOUND ;
 int EFI_OUT_OF_RESOURCES ;
 int EFI_SUCCESS ;
 int EFI_UNSUPPORTED ;
 int * efi_devpath_name (int ) ;
 int efi_free_devpath_name (int *) ;
 int free (void*) ;
 scalar_t__ fsread (int,void*,size_t) ;
 scalar_t__ fsread_size (int,int *,int ,size_t*) ;
 scalar_t__ init_dev (TYPE_1__*) ;
 int lookup (char const*) ;
 void* malloc (size_t) ;
 int printf (char*,...) ;

__attribute__((used)) static EFI_STATUS
load(const char *filepath, dev_info_t *dev, void **bufp, size_t *bufsize)
{
 ufs_ino_t ino;
 size_t size;
 ssize_t read;
 void *buf;
 if (init_dev(dev) < 0) {
  DPRINTF("Failed to init device\n");
  return (EFI_UNSUPPORTED);
 }

 if ((ino = lookup(filepath)) == 0) {
  DPRINTF("Failed to lookup '%s' (file not found?)\n", filepath);
  return (EFI_NOT_FOUND);
 }

 if (fsread_size(ino, ((void*)0), 0, &size) < 0 || size <= 0) {
  printf("Failed to read size of '%s' ino: %d\n", filepath, ino);
  return (EFI_INVALID_PARAMETER);
 }

 buf = malloc(size);
 if (buf == ((void*)0)) {
  printf("Failed to allocate read buffer %zu for '%s'\n",
      size, filepath);
  return (EFI_OUT_OF_RESOURCES);
 }

 read = fsread(ino, buf, size);
 if ((size_t)read != size) {
  printf("Failed to read '%s' (%zd != %zu)\n", filepath, read,
      size);
  free(buf);
  return (EFI_INVALID_PARAMETER);
 }

 DPRINTF("Load complete\n");

 *bufp = buf;
 *bufsize = size;

 return (EFI_SUCCESS);
}
