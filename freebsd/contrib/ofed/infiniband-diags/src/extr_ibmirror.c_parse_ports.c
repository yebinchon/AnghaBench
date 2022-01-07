
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_SWITCH_PORTS ;
 int free (char*) ;
 char* strdup (char*) ;
 char* strtok (char*,char*) ;
 int strtoul (char*,int *,int ) ;

__attribute__((used)) static int parse_ports(char *ports_str, char *ports_array)
{
 int num, i;
 char *str = strdup(ports_str);
 char *token = strtok(str, ",");
 for (i = 0; i < MAX_SWITCH_PORTS && token; i++) {
  num = strtoul(token, ((void*)0), 0);
  if (num > 0 && num < MAX_SWITCH_PORTS)
   ports_array[num] = 1;

  token = strtok(((void*)0), ",");
 }
 free(str);
 return 0;
}
