
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int * strchr (char const*,char) ;

__attribute__((used)) static boolean_t
dataset_name_hidden(const char *name)
{
 if (strchr(name, '$') != ((void*)0))
  return (B_TRUE);
 if (strchr(name, '%') != ((void*)0))
  return (B_TRUE);
 return (B_FALSE);
}
