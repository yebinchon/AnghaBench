
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage()
{
 fprintf(stderr,
  "Usage: scsi_target [-AdSTY] [-b bufsize] [-c sectorsize]\n"
  "\t\t[-r numbufs] [-s volsize] [-W 8,16,32]\n"
  "\t\tbus:target:lun filename\n");
 exit(1);
}
