
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct stat {scalar_t__ st_mode; scalar_t__ st_size; } ;
struct TYPE_2__ {int len; int data; int command; } ;
struct msg_open {TYPE_1__ hdr; int path; } ;


 int CMD_OPEN ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;
 scalar_t__ bytes ;
 struct msg_open* calloc (int,int) ;
 int close (scalar_t__) ;
 int dst_file ;
 int errno ;
 scalar_t__ fd ;
 int fflush (int *) ;
 void* file_addr ;
 int free (struct msg_open*) ;
 int fstat (scalar_t__,struct stat*) ;
 void* mmap (int *,scalar_t__,int ,int ,scalar_t__,int ) ;
 int msg_get_resp (int,TYPE_1__*,int ) ;
 int munmap (void*,scalar_t__) ;
 scalar_t__ open (int ,int ) ;
 int printf (char*) ;
 int rsend (int,struct msg_open*,int,int ) ;
 int src_file ;
 int strcpy (int ,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int client_open(int rs)
{
 struct msg_open *msg;
 struct stat stats;
 uint32_t len;
 int ret;

 printf("opening...");
 fflush(((void*)0));
 fd = open(src_file, O_RDONLY);
 if (fd < 0)
  return fd;

 ret = fstat(fd, &stats);
 if (ret < 0)
  goto err1;

 bytes = (uint64_t) stats.st_size;
 file_addr = mmap(((void*)0), bytes, PROT_READ, MAP_SHARED, fd, 0);
 if (file_addr == (void *) -1) {
  ret = errno;
  goto err1;
 }

 len = (((uint32_t) strlen(dst_file)) + 8) & 0xFFFFFFF8;
 msg = calloc(1, sizeof(*msg) + len);
 if (!msg) {
  ret = -1;
  goto err2;
 }

 msg->hdr.command = CMD_OPEN;
 msg->hdr.len = sizeof(*msg) + len;
 msg->hdr.data = (uint32_t) stats.st_mode;
 strcpy(msg->path, dst_file);
 ret = rsend(rs, msg, msg->hdr.len, 0);
 if (ret != msg->hdr.len)
  goto err3;

 ret = msg_get_resp(rs, &msg->hdr, CMD_OPEN);
 if (ret)
  goto err3;

 return 0;

err3:
 free(msg);
err2:
 munmap(file_addr, bytes);
err1:
 close(fd);
 return ret;
}
