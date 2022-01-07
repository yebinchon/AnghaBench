
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;
 scalar_t__ end ;
 int printf (char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ sbrk (int ) ;

__attribute__((used)) static int
command_heap(int argc, char *argv[])
{

 printf("heap base at %p, top at %p, used %td\n", end, sbrk(0),
     sbrk(0) - end);

 return (CMD_OK);
}
