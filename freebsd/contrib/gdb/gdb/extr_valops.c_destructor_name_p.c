
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int error (char*) ;
 char* strchr (char*,char) ;
 unsigned int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,unsigned int) ;
 char* type_name_no_tag (struct type const*) ;

int
destructor_name_p (const char *name, const struct type *type)
{


  if (name[0] == '~')
    {
      char *dname = type_name_no_tag (type);
      char *cp = strchr (dname, '<');
      unsigned int len;


      if (cp == ((void*)0))
 len = strlen (dname);
      else
 len = cp - dname;
      if (strlen (name + 1) != len || strncmp (dname, name + 1, len) != 0)
 error ("name of destructor must equal name of class");
      else
 return 1;
    }
  return 0;
}
