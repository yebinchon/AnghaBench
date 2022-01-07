
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 char* class_name ;
 int kldfind (char*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
std_unload_available(void)
{
 char name[64];
 int id;

 snprintf(name, sizeof(name), "geom_%s", class_name);
 id = kldfind(name);
 if (id >= 0)
  return (1);
 return (0);
}
