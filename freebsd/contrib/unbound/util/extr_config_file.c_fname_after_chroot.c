
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {char const* chrootdir; char* directory; } ;


 scalar_t__ malloc (size_t) ;
 int strlcat (char*,char const*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 int strlen_after_chroot (char const*,struct config_file*,int) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

char*
fname_after_chroot(const char* fname, struct config_file* cfg, int use_chdir)
{
 size_t len = strlen_after_chroot(fname, cfg, use_chdir)+1;
 int slashit = 0;
 char* buf = (char*)malloc(len);
 if(!buf)
  return ((void*)0);
 buf[0] = 0;

 if(cfg->chrootdir && cfg->chrootdir[0] &&
  strncmp(cfg->chrootdir, fname, strlen(cfg->chrootdir)) == 0) {

  (void)strlcpy(buf, fname, len);
  buf[len-1] = 0;
  return buf;
 }

 if(cfg->chrootdir && cfg->chrootdir[0]) {

  (void)strlcpy(buf, cfg->chrootdir, len);
  slashit = 1;
 }






 if(fname[0] == '/' || !use_chdir) {

 } else if(cfg->directory && cfg->directory[0]) {

  if(slashit && cfg->directory[0] != '/')
   (void)strlcat(buf, "/", len);

  if(cfg->chrootdir && cfg->chrootdir[0] &&
   strncmp(cfg->chrootdir, cfg->directory,
   strlen(cfg->chrootdir)) == 0)
   (void)strlcat(buf, cfg->directory+strlen(cfg->chrootdir),
       len);
  else (void)strlcat(buf, cfg->directory, len);
  slashit = 1;
 }

 if(slashit && fname[0] != '/')
  (void)strlcat(buf, "/", len);
 (void)strlcat(buf, fname, len);
 buf[len-1] = 0;
 return buf;
}
