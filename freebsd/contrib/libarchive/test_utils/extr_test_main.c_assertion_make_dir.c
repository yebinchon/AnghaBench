
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _mkdir (char const*) ;
 int assertion_count (char const*,int) ;
 int assertion_file_mode (char const*,int,char const*,int) ;
 scalar_t__ chmod (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*) ;
 scalar_t__ mkdir (char const*,int) ;

int
assertion_make_dir(const char *file, int line, const char *dirname, int mode)
{
 assertion_count(file, line);





 if (0 == mkdir(dirname, mode)) {
  if (0 == chmod(dirname, mode)) {
   assertion_file_mode(file, line, dirname, mode);
   return (1);
  }
 }

 failure_start(file, line, "Could not create directory %s", dirname);
 failure_finish(((void*)0));
 return(0);
}
