
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_type; } ;
struct socket {int so_type; } ;
struct file {int f_type; struct vnode* f_vnode; struct socket* f_data; } ;
typedef int cloudabi_filetype_t ;


 int CLOUDABI_FILETYPE_BLOCK_DEVICE ;
 int CLOUDABI_FILETYPE_CHARACTER_DEVICE ;
 int CLOUDABI_FILETYPE_DIRECTORY ;
 int CLOUDABI_FILETYPE_PROCESS ;
 int CLOUDABI_FILETYPE_REGULAR_FILE ;
 int CLOUDABI_FILETYPE_SHARED_MEMORY ;
 int CLOUDABI_FILETYPE_SOCKET_DGRAM ;
 int CLOUDABI_FILETYPE_SOCKET_STREAM ;
 int CLOUDABI_FILETYPE_SYMBOLIC_LINK ;
 int CLOUDABI_FILETYPE_UNKNOWN ;
cloudabi_filetype_t
cloudabi_convert_filetype(const struct file *fp)
{
 struct socket *so;
 struct vnode *vp;

 switch (fp->f_type) {
 case 142:
  return (CLOUDABI_FILETYPE_SOCKET_STREAM);
 case 141:
  return (CLOUDABI_FILETYPE_SOCKET_STREAM);
 case 140:
  return (CLOUDABI_FILETYPE_PROCESS);
 case 139:
  return (CLOUDABI_FILETYPE_SHARED_MEMORY);
 case 138:
  so = fp->f_data;
  switch (so->so_type) {
  case 136:
   return (CLOUDABI_FILETYPE_SOCKET_DGRAM);
  case 135:
   return (CLOUDABI_FILETYPE_SOCKET_STREAM);
  default:
   return (CLOUDABI_FILETYPE_UNKNOWN);
  }
 case 137:
  vp = fp->f_vnode;
  switch (vp->v_type) {
  case 134:
   return (CLOUDABI_FILETYPE_BLOCK_DEVICE);
  case 133:
   return (CLOUDABI_FILETYPE_CHARACTER_DEVICE);
  case 132:
   return (CLOUDABI_FILETYPE_DIRECTORY);
  case 131:
   return (CLOUDABI_FILETYPE_SOCKET_STREAM);
  case 130:
   return (CLOUDABI_FILETYPE_SYMBOLIC_LINK);
  case 129:
   return (CLOUDABI_FILETYPE_REGULAR_FILE);
  case 128:
   return (CLOUDABI_FILETYPE_SOCKET_STREAM);
  default:
   return (CLOUDABI_FILETYPE_UNKNOWN);
  }
 default:
  return (CLOUDABI_FILETYPE_UNKNOWN);
 }
}
