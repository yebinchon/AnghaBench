
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_PAGESIZE ;
 int munmap (char*,int ) ;
 int roundup (size_t,unsigned int) ;
 unsigned int sysconf (int ) ;

__attribute__((used)) static void unmapfile(char *map, size_t size)
{
 unsigned ps = sysconf(_SC_PAGESIZE);
 munmap(map, roundup(size, ps));
}
