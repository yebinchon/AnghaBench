
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_dev_entered {scalar_t__ is_local; int cmd; } ;
struct cuse_data_chunk {uintptr_t local_ptr; uintptr_t peer_ptr; int length; } ;


 int CUSE_ERR_FAULT ;
 int CUSE_ERR_INVALID ;
 int CUSE_IOCTL_READ_DATA ;
 int DPRINTF (char*,void const*,...) ;
 int cuse_cmd_str (int ) ;
 struct cuse_dev_entered* cuse_dev_get_entered () ;
 int errno ;
 scalar_t__ f_cuse ;
 int ioctl (scalar_t__,int ,struct cuse_data_chunk*) ;
 int memcpy (void*,void const*,int) ;

int
cuse_copy_in(const void *user_src, void *dst, int len)
{
 struct cuse_data_chunk info;
 struct cuse_dev_entered *pe;
 int error;

 if ((f_cuse < 0) || (len < 0))
  return (CUSE_ERR_INVALID);

 pe = cuse_dev_get_entered();
 if (pe == ((void*)0))
  return (CUSE_ERR_INVALID);

 DPRINTF("cuse: copy_in(%p,%p,%d), cmd = %d = %s\n",
     user_src, dst, len, pe->cmd, cuse_cmd_str(pe->cmd));

 if (pe->is_local) {
  memcpy(dst, user_src, len);
 } else {
  info.local_ptr = (uintptr_t)dst;
  info.peer_ptr = (uintptr_t)user_src;
  info.length = len;

  error = ioctl(f_cuse, CUSE_IOCTL_READ_DATA, &info);
  if (error) {
   DPRINTF("cuse: copy_in() error = %d\n", errno);
   return (CUSE_ERR_FAULT);
  }
 }
 return (0);
}
