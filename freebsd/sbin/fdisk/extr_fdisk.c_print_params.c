
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cyls ;
 int cylsecs ;
 int dos_cyls ;
 int dos_cylsecs ;
 int dos_heads ;
 int dos_sectors ;
 int heads ;
 int printf (char*,...) ;
 int sectors ;

__attribute__((used)) static void
print_params()
{
 printf("parameters extracted from in-core disklabel are:\n");
 printf("cylinders=%d heads=%d sectors/track=%d (%d blks/cyl)\n\n"
   ,cyls,heads,sectors,cylsecs);
 if (dos_cyls > 1023 || dos_heads > 255 || dos_sectors > 63)
  printf("Figures below won't work with BIOS for partitions not in cyl 1\n");
 printf("parameters to be used for BIOS calculations are:\n");
 printf("cylinders=%d heads=%d sectors/track=%d (%d blks/cyl)\n\n"
  ,dos_cyls,dos_heads,dos_sectors,dos_cylsecs);
}
