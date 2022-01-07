
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int read (int,char*,int) ;

__attribute__((used)) static int read_loop(int fd, char *buffer, int count)
{
 int offset, block;

 offset = 0;
 while (count > 0) {
  block = read(fd, &buffer[offset], count);

  if (block < 0) {
   if (errno == EINTR) continue;
   return block;
  }
  if (!block) return offset;

  offset += block;
  count -= block;
 }

 return offset;
}
