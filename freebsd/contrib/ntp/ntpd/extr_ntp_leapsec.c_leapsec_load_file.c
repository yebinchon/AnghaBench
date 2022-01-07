
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mtime; scalar_t__ st_ctime; } ;
typedef int FILE ;


 int FALSE ;
 int LOG_ERR ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int leapsec_load_stream (int *,char const*,int) ;
 int logPrefix ;
 int msyslog (int ,char*,int ,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;

int
leapsec_load_file(
 const char * fname,
 struct stat * sb_old,
 int force,
 int logall)
{
 FILE * fp;
 struct stat sb_new;
 int rc;


 if ( !(fname && *fname) )
  return FALSE;


 if (0 != stat(fname, &sb_new)) {
  if (logall)
   msyslog(LOG_ERR, "%s ('%s'): stat failed: %m",
    logPrefix, fname);
  return FALSE;
 }


 if (((void*)0) != sb_old) {
  if (!force
   && sb_old->st_mtime == sb_new.st_mtime
   && sb_old->st_ctime == sb_new.st_ctime
     )
   return FALSE;
  *sb_old = sb_new;
 }
 if ((fp = fopen(fname, "r")) == ((void*)0)) {
  if (logall)
   msyslog(LOG_ERR,
    "%s ('%s'): open failed: %m",
    logPrefix, fname);
  return FALSE;
 }

 rc = leapsec_load_stream(fp, fname, logall);
 fclose(fp);
 return rc;
}
