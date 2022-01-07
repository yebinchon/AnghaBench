
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t map ;
 int panic (char*) ;

__attribute__((used)) static void
xtrmapskip(char *buf, size_t size)
{

 panic("hole in map\n");
 map += size;
}
