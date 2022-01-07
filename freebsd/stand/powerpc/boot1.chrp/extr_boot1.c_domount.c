
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __dmadat ;
 int bootdev ;
 int * dmadat ;
 scalar_t__ fsread (int ,int *,int ) ;
 int ofw_open (char const*) ;
 int printf (char*) ;

__attribute__((used)) static int
domount(const char *device, int quiet)
{

 dmadat = &__dmadat;
 if ((bootdev = ofw_open(device)) == -1) {
  printf("domount: can't open device\n");
  return (-1);
 }
 if (fsread(0, ((void*)0), 0)) {
  if (!quiet)
   printf("domount: can't read superblock\n");
  return (-1);
 }
 return (0);
}
