
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {char const* chrootdir; char* directory; } ;


 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static size_t
strlen_after_chroot(const char* fname, struct config_file* cfg, int use_chdir)
{
 size_t len = 0;
 int slashit = 0;
 if(cfg->chrootdir && cfg->chrootdir[0] &&
  strncmp(cfg->chrootdir, fname, strlen(cfg->chrootdir)) == 0) {

  return strlen(fname);
 }

 if(cfg->chrootdir && cfg->chrootdir[0]) {

  len += strlen(cfg->chrootdir);
  slashit = 1;
 }






 if(fname[0] == '/' || !use_chdir) {

 } else if(cfg->directory && cfg->directory[0]) {

  if(slashit && cfg->directory[0] != '/')
   len++;
  if(cfg->chrootdir && cfg->chrootdir[0] &&
   strncmp(cfg->chrootdir, cfg->directory,
   strlen(cfg->chrootdir)) == 0)
   len += strlen(cfg->directory)-strlen(cfg->chrootdir);
  else len += strlen(cfg->directory);
  slashit = 1;
 }

 if(slashit && fname[0] != '/')
  len++;
 len += strlen(fname);
 return len;
}
