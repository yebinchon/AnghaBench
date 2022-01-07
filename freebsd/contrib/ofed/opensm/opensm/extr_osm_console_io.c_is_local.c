
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSM_LOCAL_CONSOLE ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int is_local(char *str)
{

 if (str)
  return (strcmp(str, OSM_LOCAL_CONSOLE) == 0);
 return 0;
}
