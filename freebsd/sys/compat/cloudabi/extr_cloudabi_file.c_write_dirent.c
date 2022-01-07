
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uio {int uio_resid; } ;
struct dirent {int d_namlen; int d_type; TYPE_1__* d_name; int d_fileno; } ;
struct TYPE_3__ {int d_namlen; void* d_type; int d_ino; int d_next; } ;
typedef TYPE_1__ cloudabi_dirent_t ;
typedef int cloudabi_dircookie_t ;
typedef int cde ;


 void* CLOUDABI_FILETYPE_BLOCK_DEVICE ;
 void* CLOUDABI_FILETYPE_CHARACTER_DEVICE ;
 void* CLOUDABI_FILETYPE_DIRECTORY ;
 void* CLOUDABI_FILETYPE_REGULAR_FILE ;
 void* CLOUDABI_FILETYPE_SOCKET_STREAM ;
 void* CLOUDABI_FILETYPE_SYMBOLIC_LINK ;
 void* CLOUDABI_FILETYPE_UNKNOWN ;







 int uiomove (TYPE_1__*,size_t,struct uio*) ;

__attribute__((used)) static int
write_dirent(struct dirent *bde, cloudabi_dircookie_t cookie, struct uio *uio)
{
 cloudabi_dirent_t cde = {
  .d_next = cookie,
  .d_ino = bde->d_fileno,
  .d_namlen = bde->d_namlen,
 };
 size_t len;
 int error;


 switch (bde->d_type) {
 case 134:
  cde.d_type = CLOUDABI_FILETYPE_BLOCK_DEVICE;
  break;
 case 133:
  cde.d_type = CLOUDABI_FILETYPE_CHARACTER_DEVICE;
  break;
 case 132:
  cde.d_type = CLOUDABI_FILETYPE_DIRECTORY;
  break;
 case 131:
  cde.d_type = CLOUDABI_FILETYPE_SOCKET_STREAM;
  break;
 case 130:
  cde.d_type = CLOUDABI_FILETYPE_SYMBOLIC_LINK;
  break;
 case 129:
  cde.d_type = CLOUDABI_FILETYPE_REGULAR_FILE;
  break;
 case 128:

  cde.d_type = CLOUDABI_FILETYPE_SOCKET_STREAM;
  break;
 default:
  cde.d_type = CLOUDABI_FILETYPE_UNKNOWN;
  break;
 }


 len = sizeof(cde) < uio->uio_resid ? sizeof(cde) : uio->uio_resid;
 error = uiomove(&cde, len, uio);
 if (error != 0)
  return (error);


 len = bde->d_namlen < uio->uio_resid ? bde->d_namlen : uio->uio_resid;
 return (uiomove(bde->d_name, len, uio));
}
