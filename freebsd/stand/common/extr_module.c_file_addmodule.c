
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {struct kernel_module* f_modules; } ;
struct mod_depend {int md_ver_preferred; } ;
struct kernel_module {int m_version; struct kernel_module* m_next; struct preloaded_file* m_fp; int * m_name; } ;
typedef int mdepend ;


 int EEXIST ;
 int ENOMEM ;
 int bzero (struct mod_depend*,int) ;
 struct kernel_module* calloc (int,int) ;
 struct kernel_module* file_findmodule (struct preloaded_file*,char*,struct mod_depend*) ;
 int free (struct kernel_module*) ;
 int * strdup (char*) ;

int
file_addmodule(struct preloaded_file *fp, char *modname, int version,
 struct kernel_module **newmp)
{
 struct kernel_module *mp;
 struct mod_depend mdepend;

 bzero(&mdepend, sizeof(mdepend));
 mdepend.md_ver_preferred = version;
 mp = file_findmodule(fp, modname, &mdepend);
 if (mp)
  return (EEXIST);
 mp = calloc(1, sizeof(struct kernel_module));
 if (mp == ((void*)0))
  return (ENOMEM);
 mp->m_name = strdup(modname);
 if (mp->m_name == ((void*)0)) {
  free(mp);
  return (ENOMEM);
 }
 mp->m_version = version;
 mp->m_fp = fp;
 mp->m_next = fp->f_modules;
 fp->f_modules = mp;
 if (newmp)
  *newmp = mp;
 return (0);
}
