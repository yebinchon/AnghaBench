
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*,char*,char*,char*,char*,char*,char*) ;

void
shortdump_hdr()
{
 printf("%-4s %-3s %-1s %-8s %-7s %s -> %s\n",
  "time", "p", "s", "spi", "ltime", "src", "dst");
}
