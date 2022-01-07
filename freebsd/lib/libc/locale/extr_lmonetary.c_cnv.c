
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAR_MAX ;
 int strtol (char const*,int *,int) ;

__attribute__((used)) static char
cnv(const char *str)
{
 int i = strtol(str, ((void*)0), 10);

 if (i == -1)
  i = CHAR_MAX;
 return ((char)i);
}
