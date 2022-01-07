
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 scalar_t__ FD_ISSET (int,int const*) ;
 int min (int,int) ;

__attribute__((used)) static char *
fdbits(
 int count,
 const fd_set* set
 )
{
 static char buffer[256];
 char * buf = buffer;

 count = min(count, 255);

 while (count >= 0) {
  *buf++ = FD_ISSET(count, set) ? '#' : '-';
  count--;
 }
 *buf = '\0';

 return buffer;
}
