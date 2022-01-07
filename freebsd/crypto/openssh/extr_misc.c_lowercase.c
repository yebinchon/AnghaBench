
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 char tolower (int ) ;

void
lowercase(char *s)
{
 for (; *s; s++)
  *s = tolower((u_char)*s);
}
