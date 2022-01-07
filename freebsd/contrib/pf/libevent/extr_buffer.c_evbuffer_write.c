
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int off; int buffer; } ;
typedef int HANDLE ;
typedef int DWORD ;


 int WriteFile (int ,int ,int ,int*,int *) ;
 int evbuffer_drain (struct evbuffer*,int) ;
 int write (int,int ,int ) ;

int
evbuffer_write(struct evbuffer *buffer, int fd)
{
 int n;





 n = write(fd, buffer->buffer, buffer->off);
 if (n == -1)
  return (-1);
 if (n == 0)
  return (0);
 evbuffer_drain(buffer, n);

 return (n);
}
