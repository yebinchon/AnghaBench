
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static char* last_space_pos(const char* str)
{
 char* sp = strrchr(str, ' ');
 char* tab = strrchr(str, '\t');
 if(!tab && !sp)
  return ((void*)0);
 if(!sp) return tab;
 if(!tab) return sp;
 return (sp>tab)?sp:tab;
}
