
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_hdr {int len; int data; } ;


 int EBUSY ;
 int ENOMEM ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int _recv (int,char*,int) ;
 int errno ;
 scalar_t__ fd ;
 int fflush (int *) ;
 scalar_t__ file_addr ;
 int free (char*) ;
 char* malloc (int) ;
 int msg_send_resp (int,struct msg_hdr*,int) ;
 scalar_t__ open (char*,int,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int server_open(int rs, struct msg_hdr *msg)
{
 char *path = ((void*)0);
 int ret, len;

 printf("opening: ");
 fflush(((void*)0));
 if (file_addr || fd > 0) {
  printf("cannot open another file\n");
  ret = EBUSY;
  goto out;
 }

 len = msg->len - sizeof *msg;
 path = malloc(len);
 if (!path) {
  printf("cannot allocate path name\n");
  ret = ENOMEM;
  goto out;
 }

 ret = _recv(rs, path, len);
 if (ret != len) {
  printf("error receiving path\n");
  goto out;
 }

 printf("%s, ", path);
 fflush(((void*)0));
 fd = open(path, O_RDWR | O_CREAT | O_TRUNC, msg->data);
 if (fd < 0) {
  printf("unable to open destination file\n");
  ret = errno;
 }

 ret = 0;
out:
 if (path)
  free(path);

 msg_send_resp(rs, msg, ret);
 return ret;
}
