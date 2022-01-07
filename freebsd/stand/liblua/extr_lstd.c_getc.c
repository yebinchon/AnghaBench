
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ FILE ;


 int EOF ;
 size_t read (int ,char*,int) ;

int
getc(FILE *stream)
{
 char ch;
 size_t r;

 if (stream == ((void*)0))
  return EOF;
 r = read(stream->fd, &ch, 1);
 if (r == 1)
  return ch;
 return EOF;
}
