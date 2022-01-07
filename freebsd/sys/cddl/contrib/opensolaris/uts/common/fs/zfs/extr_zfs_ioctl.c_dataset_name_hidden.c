
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int INGLOBALZONE (int ) ;
 int curthread ;
 int * strchr (char const*,char) ;
 int zone_dataset_visible (char const*,int *) ;

boolean_t
dataset_name_hidden(const char *name)
{





 if (strchr(name, '$') != ((void*)0))
  return (B_TRUE);
 if (strchr(name, '%') != ((void*)0))
  return (B_TRUE);
 if (!INGLOBALZONE(curthread) && !zone_dataset_visible(name, ((void*)0)))
  return (B_TRUE);
 return (B_FALSE);
}
