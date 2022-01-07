
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char tolower (char) ;

__attribute__((used)) static void fixname(char *s)
{
 for (; *s; s++)
  *s = tolower(*s);
}
