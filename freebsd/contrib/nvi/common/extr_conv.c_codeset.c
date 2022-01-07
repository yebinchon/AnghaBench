
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODESET ;
 char* nl_langinfo (int ) ;

char *
codeset(void)
{
 static char *cs;

 if (cs == ((void*)0))
  cs = nl_langinfo(CODESET);

 return cs;
}
