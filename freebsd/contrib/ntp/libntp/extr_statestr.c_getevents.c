
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int snprintf (char*,int ,char*,int,char*) ;

__attribute__((used)) static const char *
getevents(
 int cnt
 )
{
 char * buf;

 if (cnt == 0)
  return "no events";

 LIB_GETBUF(buf);
 snprintf(buf, LIB_BUFLENGTH, "%d event%s", cnt,
   (1 == cnt)
       ? ""
       : "s");

 return buf;
}
