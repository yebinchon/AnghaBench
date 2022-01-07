
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 int PATH_MAX ;
 int _PC_PATH_MAX ;
 char* alloca (long) ;
 char* canonicalize_file_name (char const*) ;
 long pathconf (char*,int ) ;
 void* realpath (char const*,char*) ;
 char* xstrdup (char const*) ;

char *
gdb_realpath (const char *filename)
{
  return xstrdup (filename);
}
