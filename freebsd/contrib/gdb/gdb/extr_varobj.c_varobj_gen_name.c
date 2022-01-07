
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xasprintf (char**,char*,int) ;

char *
varobj_gen_name (void)
{
  static int id = 0;
  char *obj_name;


  id++;
  xasprintf (&obj_name, "var%d", id);

  return obj_name;
}
