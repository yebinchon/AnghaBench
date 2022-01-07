
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {int f_type; int f_name; struct preloaded_file* f_next; } ;


 struct preloaded_file* preloaded_files ;
 int strcmp (char const*,int ) ;

struct preloaded_file *
file_findfile(const char *name, const char *type)
{
 struct preloaded_file *fp;

 for (fp = preloaded_files; fp != ((void*)0); fp = fp->f_next) {
  if (((name == ((void*)0)) || !strcmp(name, fp->f_name)) &&
    ((type == ((void*)0)) || !strcmp(type, fp->f_type)))
   break;
 }
 return (fp);
}
