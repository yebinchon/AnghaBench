
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct sun_disklabel {int sl_nsectors; int sl_ntracks; TYPE_1__* sl_part; } ;
struct TYPE_2__ {int sdkp_cyloffset; scalar_t__ sdkp_nsectors; } ;


 scalar_t__ strcmp (char*,char*) ;
 int strtoumax (char*,char**,int) ;

__attribute__((used)) static int
parse_offset(struct sun_disklabel *sl, int part, char *offset)
{
 uintmax_t nsectors;
 uintmax_t n;
 char *p;
 int i;

 nsectors = 0;
 n = strtoumax(offset, &p, 10);
 if (*p != '\0') {
  if (strcmp(offset, "*") == 0) {
   for (i = 0; i < part; i++) {
    if (i == 2)
     continue;
    nsectors += sl->sl_part[i].sdkp_nsectors;
   }
   n = nsectors / (sl->sl_nsectors * sl->sl_ntracks);
  } else
   return (-1);
 }
 sl->sl_part[part].sdkp_cyloffset = n;
 return (0);
}
