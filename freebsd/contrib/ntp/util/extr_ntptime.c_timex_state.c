
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 size_t COUNTOF (char const**) ;
 int snprintf (char*,int,char*,int) ;
 char const** timex_states ;

const char *
timex_state(
 int s
 )
{
 static char buf[32];

 if ((size_t)s < COUNTOF(timex_states))
  return timex_states[s];
 snprintf(buf, sizeof(buf), "TIME-#%d", s);
 return buf;
}
