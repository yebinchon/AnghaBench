
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;
 int heap_bottom ;
 int heap_top ;
 int mallocstats () ;
 int printf (char*,int ,int ,int ) ;
 int sbrk (int ) ;

__attribute__((used)) static int
command_heap(int argc, char *argv[])
{
    mallocstats();
    printf("heap base at %p, top at %p, upper limit at %p\n", heap_bottom,
      sbrk(0), heap_top);
    return(CMD_OK);
}
