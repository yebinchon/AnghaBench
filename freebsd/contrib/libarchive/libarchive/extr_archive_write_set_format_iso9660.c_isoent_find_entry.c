
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isoent {int dir; } ;
typedef int name ;


 int NAME_MAX ;
 int _MAX_FNAME ;
 int get_path_component (char*,int,char const*) ;
 struct isoent* isoent_find_child (struct isoent*,char*) ;

__attribute__((used)) static struct isoent *
isoent_find_entry(struct isoent *rootent, const char *fn)
{





 char name[256];

 struct isoent *isoent, *np;
 int l;

 isoent = rootent;
 np = ((void*)0);
 for (;;) {
  l = get_path_component(name, sizeof(name), fn);
  if (l == 0)
   break;
  fn += l;
  if (fn[0] == '/')
   fn++;

  np = isoent_find_child(isoent, name);
  if (np == ((void*)0))
   break;
  if (fn[0] == '\0')
   break;


  isoent = np;
  np = ((void*)0);
  if (!isoent->dir)
   break;
 }

 return (np);
}
