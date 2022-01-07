
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct objfile {int dummy; } ;
struct nextfield {struct nextfield* next; } ;
struct field_info {struct nextfield* list; } ;


 int STABS_CONTINUE (char**,struct objfile*) ;
 scalar_t__ is_cplus_marker (char) ;
 int make_cleanup (int ,struct nextfield*) ;
 int memset (struct nextfield*,int ,int) ;
 int read_cpp_abbrev (struct field_info*,char**,struct type*,struct objfile*) ;
 int read_one_struct_field (struct field_info*,char**,char*,struct type*,struct objfile*) ;
 int xfree ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static int
read_struct_fields (struct field_info *fip, char **pp, struct type *type,
      struct objfile *objfile)
{
  char *p;
  struct nextfield *new;



  p = *pp;







  while (**pp != ';' && **pp != '\0')
    {
      STABS_CONTINUE (pp, objfile);

      new = (struct nextfield *) xmalloc (sizeof (struct nextfield));
      make_cleanup (xfree, new);
      memset (new, 0, sizeof (struct nextfield));
      new->next = fip->list;
      fip->list = new;


      p = *pp;






      if (is_cplus_marker (p[0]) && p[1] != '_')
 {
   if (!read_cpp_abbrev (fip, pp, type, objfile))
     return 0;
   continue;
 }






      while (*p != ':' && *p != '\0')
 {
   p++;
 }
      if (*p == '\0')
 return 0;


      if (p[1] == ':')
 {
   break;
 }
      read_one_struct_field (fip, pp, p, type, objfile);
    }
  if (p[0] == ':' && p[1] == ':')
    {



      fip->list = fip->list->next;
    }
  return 1;
}
