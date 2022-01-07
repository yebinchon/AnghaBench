
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (unsigned char*) ;
 unsigned char* malloc (size_t) ;
 int memset (unsigned char*,unsigned char,size_t) ;
 int write (int,unsigned char*,size_t) ;

__attribute__((used)) static int
ucl_fd_append_character (unsigned char c, size_t len, void *ud)
{
 int fd = *(int *)ud;
 unsigned char *buf;

 if (len == 1) {
  return write (fd, &c, 1);
 }
 else {
  buf = malloc (len);
  if (buf == ((void*)0)) {

   while (len --) {
    if (write (fd, &c, 1) == -1) {
     return -1;
    }
   }
  }
  else {
   memset (buf, c, len);
   if (write (fd, buf, len) == -1) {
    free(buf);
    return -1;
   }
   free (buf);
  }
 }

 return 0;
}
