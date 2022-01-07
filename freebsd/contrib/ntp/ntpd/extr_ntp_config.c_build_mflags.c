
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int RESM_NTPONLY ;
 int RESM_SOURCE ;
 int appendstr (char*,int,char*) ;
 int snprintf (char*,int,char*,int) ;

char *
build_mflags(u_short mflags)
{
 static char mfs[1024];

 mfs[0] = '\0';

 if (mflags & RESM_NTPONLY) {
  mflags &= ~RESM_NTPONLY;
  appendstr(mfs, sizeof mfs, "ntponly");
 }

 if (mflags & RESM_SOURCE) {
  mflags &= ~RESM_SOURCE;
  appendstr(mfs, sizeof mfs, "source");
 }

 if (mflags) {
  char string[10];

  snprintf(string, sizeof string, "%0x", mflags);
  appendstr(mfs, sizeof mfs, string);
 }

 return mfs;
}
