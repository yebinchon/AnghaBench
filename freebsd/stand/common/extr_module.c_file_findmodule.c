
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {struct kernel_module* f_modules; struct preloaded_file* f_next; } ;
struct mod_depend {int md_ver_preferred; int md_ver_minimum; int md_ver_maximum; } ;
struct kernel_module {int m_version; int m_name; struct kernel_module* m_next; } ;


 struct preloaded_file* preloaded_files ;
 scalar_t__ strcmp (char*,int ) ;

struct kernel_module *
file_findmodule(struct preloaded_file *fp, char *modname,
 struct mod_depend *verinfo)
{
 struct kernel_module *mp, *best;
 int bestver, mver;

 if (fp == ((void*)0)) {
  for (fp = preloaded_files; fp; fp = fp->f_next) {
   mp = file_findmodule(fp, modname, verinfo);
   if (mp)
    return (mp);
  }
  return (((void*)0));
 }
 best = ((void*)0);
 bestver = 0;
 for (mp = fp->f_modules; mp; mp = mp->m_next) {
  if (strcmp(modname, mp->m_name) == 0) {
   if (verinfo == ((void*)0))
    return (mp);
   mver = mp->m_version;
   if (mver == verinfo->md_ver_preferred)
    return (mp);
   if (mver >= verinfo->md_ver_minimum &&
     mver <= verinfo->md_ver_maximum &&
     mver > bestver) {
    best = mp;
    bestver = mver;
   }
  }
 }
 return (best);
}
