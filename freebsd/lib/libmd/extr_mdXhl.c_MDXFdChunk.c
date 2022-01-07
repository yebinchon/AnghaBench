
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef scalar_t__ off_t ;
typedef int buffer ;
typedef int MDX_CTX ;


 scalar_t__ EINVAL ;
 char* MDXEnd (int *,char*) ;
 int MDXInit (int *) ;
 int MDXUpdate (int *,unsigned char*,int) ;
 int SEEK_SET ;
 scalar_t__ errno ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int read (int,unsigned char*,scalar_t__) ;

char *
MDXFdChunk(int fd, char *buf, off_t ofs, off_t len)
{
 unsigned char buffer[16*1024];
 MDX_CTX ctx;
 struct stat stbuf;
 int readrv, e;
 off_t remain;

 if (len < 0) {
  errno = EINVAL;
  return ((void*)0);
 }

 MDXInit(&ctx);
 if (ofs != 0) {
  errno = 0;
  if (lseek(fd, ofs, SEEK_SET) != ofs ||
      (ofs == -1 && errno != 0)) {
   readrv = -1;
   goto error;
  }
 }
 remain = len;
 readrv = 0;
 while (len == 0 || remain > 0) {
  if (len == 0 || remain > sizeof(buffer))
   readrv = read(fd, buffer, sizeof(buffer));
  else
   readrv = read(fd, buffer, remain);
  if (readrv <= 0)
   break;
  MDXUpdate(&ctx, buffer, readrv);
  remain -= readrv;
 }
error:
 if (readrv < 0)
  return ((void*)0);
 return (MDXEnd(&ctx, buf));
}
