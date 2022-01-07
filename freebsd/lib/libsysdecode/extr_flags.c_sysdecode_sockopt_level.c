
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOL_SOCKET ;
 char* lookup_value (int ,int) ;
 int ngbtsolevel ;
 char* sysdecode_ipproto (int) ;

const char *
sysdecode_sockopt_level(int level)
{
 const char *str;

 if (level == SOL_SOCKET)
  return ("SOL_SOCKET");


 str = lookup_value(ngbtsolevel, level);
 if (str != ((void*)0))
  return (str);
 str = sysdecode_ipproto(level);
 if (str != ((void*)0))
  return (str);

 return (((void*)0));
}
