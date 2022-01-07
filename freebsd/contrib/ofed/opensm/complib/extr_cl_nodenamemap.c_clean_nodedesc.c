
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isprint (char) ;

char *clean_nodedesc(char *nodedesc)
{
 int i = 0;

 nodedesc[63] = '\0';
 while (nodedesc[i]) {
  if (!isprint(nodedesc[i]))
   nodedesc[i] = ' ';
  i++;
 }

 return (nodedesc);
}
