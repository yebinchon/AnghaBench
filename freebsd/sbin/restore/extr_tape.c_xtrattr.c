
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * extbuf ;
 size_t extbufsize ;
 size_t extloc ;
 int memmove (int *,char*,size_t) ;
 int panic (char*) ;

__attribute__((used)) static void
xtrattr(char *buf, size_t size)
{

 if (extloc + size > extbufsize)
  panic("overrun attribute buffer\n");
 memmove(&extbuf[extloc], buf, size);
 extloc += size;
}
