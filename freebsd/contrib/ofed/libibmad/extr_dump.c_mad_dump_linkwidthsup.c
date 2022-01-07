
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_linkwidth (char*,int,int) ;
 int snprintf (char*,int ,char*) ;
 int strlen (char*) ;

void mad_dump_linkwidthsup(char *buf, int bufsz, void *val, int valsz)
{
 int width = *(int *)val;

 dump_linkwidth(buf, bufsz, width);

 switch (width) {
 case 1:
 case 3:
 case 7:
 case 11:
 case 15:
 case 17:
 case 19:
 case 23:
 case 27:
 case 31:
  break;

 default:
  if (!(width >> 5))
   snprintf(buf + strlen(buf), bufsz - strlen(buf),
     " (IBA extension)");
  break;
 }
}
