
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 scalar_t__ isspace (int ) ;
 scalar_t__ noconst (char const*) ;

__attribute__((used)) static char *
skipws(
 const char *ptr)
{
 while (isspace((u_char)*ptr))
  ptr++;
 return (char*)noconst(ptr);
}
