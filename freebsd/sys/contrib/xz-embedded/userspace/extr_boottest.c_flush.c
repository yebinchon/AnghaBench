
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fwrite (void*,int,unsigned int,int ) ;
 int stdout ;

__attribute__((used)) static int flush( void *buf, unsigned int size)
{
 return fwrite(buf, 1, size, stdout);
}
