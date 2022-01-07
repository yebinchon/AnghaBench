
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_write {int dummy; } ;
struct msg_hdr {int len; } ;


 int EINVAL ;
 int MAP_SHARED ;
 int PROT_WRITE ;
 void* _recv (int,void*,size_t) ;
 size_t bytes ;
 int errno ;
 scalar_t__ fd ;
 int fflush (int *) ;
 void* file_addr ;
 int ftruncate (scalar_t__,size_t) ;
 void* mmap (int *,size_t,int ,int ,scalar_t__,int ) ;
 int msg_send_resp (int,struct msg_hdr*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int server_write(int rs, struct msg_hdr *msg)
{
 size_t len;
 int ret;

 printf("transferring");
 fflush(((void*)0));
 if (fd <= 0) {
  printf("...file not opened\n");
  ret = EINVAL;
  goto out;
 }

 if (msg->len != sizeof(struct msg_write)) {
  printf("...invalid message length %d\n", msg->len);
  ret = EINVAL;
  goto out;
 }

 ret = _recv(rs, (char *) &bytes, sizeof bytes);
 if (ret != sizeof bytes)
  goto out;

 ret = ftruncate(fd, bytes);
 if (ret)
  goto out;

 file_addr = mmap(((void*)0), bytes, PROT_WRITE, MAP_SHARED, fd, 0);
 if (file_addr == (void *) -1) {
  printf("...error mapping file\n");
  ret = errno;
  goto out;
 }

 printf("...%lld bytes...", (long long) bytes);
 fflush(((void*)0));
 len = _recv(rs, file_addr, bytes);
 if (len != bytes) {
  printf("...error receiving data\n");
  ret = (int) len;
 }
out:
 msg_send_resp(rs, msg, ret);
 return ret;
}
