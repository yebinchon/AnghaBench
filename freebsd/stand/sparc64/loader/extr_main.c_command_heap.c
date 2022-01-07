
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;
 scalar_t__ HEAPSZ ;
 scalar_t__ heapva ;
 int mallocstats () ;
 int printf (char*,scalar_t__,int ,scalar_t__) ;
 int sbrk (int ) ;

__attribute__((used)) static int
command_heap(int argc, char *argv[])
{

 mallocstats();
 printf("heap base at %p, top at %p, upper limit at %p\n", heapva,
     sbrk(0), heapva + HEAPSZ);
 return(CMD_OK);
}
