
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* os_strstr (char*,char*) ;
 unsigned int strtoul (char*,int *,int) ;

__attribute__((used)) static int tncs_get_type(char *start, unsigned int *type)
{
 char *pos = os_strstr(start, "<Type>");
 if (pos == ((void*)0))
  return -1;
 pos += 6;
 *type = strtoul(pos, ((void*)0), 16);
 return 0;
}
