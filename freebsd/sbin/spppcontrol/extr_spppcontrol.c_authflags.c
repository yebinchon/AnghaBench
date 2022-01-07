
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int AUTHFLAG_NOCALLOUT ;
 int AUTHFLAG_NORECHALLENGE ;
 int strcat (char*,char*) ;

const char *
authflags(u_short flags)
{
 static char buf[30];
 buf[0] = '\0';
 if (flags & AUTHFLAG_NOCALLOUT)
  strcat(buf, " callin");
 if (flags & AUTHFLAG_NORECHALLENGE)
  strcat(buf, " norechallenge");
 return buf;
}
