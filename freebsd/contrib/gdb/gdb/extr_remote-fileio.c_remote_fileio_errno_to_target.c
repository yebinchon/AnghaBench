
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILEIO_EACCES ;
 int FILEIO_EBADF ;
 int FILEIO_EBUSY ;
 int FILEIO_EEXIST ;
 int FILEIO_EFAULT ;
 int FILEIO_EFBIG ;
 int FILEIO_EINTR ;
 int FILEIO_EINVAL ;
 int FILEIO_EIO ;
 int FILEIO_EISDIR ;
 int FILEIO_EMFILE ;
 int FILEIO_ENAMETOOLONG ;
 int FILEIO_ENFILE ;
 int FILEIO_ENODEV ;
 int FILEIO_ENOENT ;
 int FILEIO_ENOSPC ;
 int FILEIO_ENOSYS ;
 int FILEIO_ENOTDIR ;
 int FILEIO_EPERM ;
 int FILEIO_EROFS ;
 int FILEIO_ESPIPE ;
 int FILEIO_EUNKNOWN ;

__attribute__((used)) static int
remote_fileio_errno_to_target (int error)
{
  switch (error)
    {
      case 130:
        return FILEIO_EPERM;
      case 134:
        return FILEIO_ENOENT;
      case 142:
        return FILEIO_EINTR;
      case 140:
        return FILEIO_EIO;
      case 147:
        return FILEIO_EBADF;
      case 148:
        return FILEIO_EACCES;
      case 144:
        return FILEIO_EFAULT;
      case 146:
        return FILEIO_EBUSY;
      case 145:
        return FILEIO_EEXIST;
      case 135:
        return FILEIO_ENODEV;
      case 131:
        return FILEIO_ENOTDIR;
      case 139:
        return FILEIO_EISDIR;
      case 141:
        return FILEIO_EINVAL;
      case 136:
        return FILEIO_ENFILE;
      case 138:
        return FILEIO_EMFILE;
      case 143:
        return FILEIO_EFBIG;
      case 133:
        return FILEIO_ENOSPC;
      case 128:
        return FILEIO_ESPIPE;
      case 129:
        return FILEIO_EROFS;
      case 132:
        return FILEIO_ENOSYS;
      case 137:
        return FILEIO_ENAMETOOLONG;
    }
  return FILEIO_EUNKNOWN;
}
