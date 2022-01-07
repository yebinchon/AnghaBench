
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_class_ent {int ac_class; int ac_desc; int ac_name; } ;


 scalar_t__ AU_CLASS_DESC_MAX ;
 scalar_t__ AU_CLASS_NAME_MAX ;
 int classdelim ;
 int strlcpy (int ,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 char* strtok_r (char*,int ,char**) ;
 int strtoul (char*,char**,int ) ;

__attribute__((used)) static struct au_class_ent *
classfromstr(char *str, struct au_class_ent *c)
{
 char *classname, *classdesc, *classflag;
 char *last;


 classflag = strtok_r(str, classdelim, &last);
 classname = strtok_r(((void*)0), classdelim, &last);
 classdesc = strtok_r(((void*)0), classdelim, &last);

 if ((classflag == ((void*)0)) || (classname == ((void*)0)) || (classdesc == ((void*)0)))
  return (((void*)0));




 if (strlen(classname) >= AU_CLASS_NAME_MAX)
  return (((void*)0));
 strlcpy(c->ac_name, classname, AU_CLASS_NAME_MAX);




 if (strlen(classdesc) >= AU_CLASS_DESC_MAX)
  return (((void*)0));
 strlcpy(c->ac_desc, classdesc, AU_CLASS_DESC_MAX);
 c->ac_class = strtoul(classflag, (char **) ((void*)0), 0);

 return (c);
}
