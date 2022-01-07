
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int open (char*,int) ;

int
main(void)
{
 return open(".", O_RDONLY | O_DIRECTORY) == -1;
}
