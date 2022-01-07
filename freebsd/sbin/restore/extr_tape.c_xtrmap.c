
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t map ;
 int memmove (size_t,char*,size_t) ;

__attribute__((used)) static void
xtrmap(char *buf, size_t size)
{

 memmove(map, buf, size);
 map += size;
}
