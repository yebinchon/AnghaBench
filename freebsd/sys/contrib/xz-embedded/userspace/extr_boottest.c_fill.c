
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fread (void*,int,unsigned int,int ) ;
 int stdin ;

__attribute__((used)) static int fill(void *buf, unsigned int size)
{
 return fread(buf, 1, size, stdin);
}
