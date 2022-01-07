
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int tmp ;
typedef int FILE ;


 int PATH_MAX ;
 int close (int) ;
 int debug3 (char*,unsigned long,char*) ;
 int errno ;
 scalar_t__ fclose (int *) ;
 int * fdopen (int,char*) ;
 scalar_t__ fprintf (int *,char*,unsigned long) ;
 int logit (char*,...) ;
 int mkstemp (char*) ;
 scalar_t__ rename (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int strerror (int ) ;
 int unlink (char*) ;

__attribute__((used)) static void
write_checkpoint(char *cpfile, u_int32_t lineno)
{
 FILE *fp;
 char tmp[PATH_MAX];
 int r;

 r = snprintf(tmp, sizeof(tmp), "%s.XXXXXXXXXX", cpfile);
 if (r == -1 || r >= PATH_MAX) {
  logit("write_checkpoint: temp pathname too long");
  return;
 }
 if ((r = mkstemp(tmp)) == -1) {
  logit("mkstemp(%s): %s", tmp, strerror(errno));
  return;
 }
 if ((fp = fdopen(r, "w")) == ((void*)0)) {
  logit("write_checkpoint: fdopen: %s", strerror(errno));
  unlink(tmp);
  close(r);
  return;
 }
 if (fprintf(fp, "%lu\n", (unsigned long)lineno) > 0 && fclose(fp) == 0
     && rename(tmp, cpfile) == 0)
  debug3("wrote checkpoint line %lu to '%s'",
      (unsigned long)lineno, cpfile);
 else
  logit("failed to write to checkpoint file '%s': %s", cpfile,
      strerror(errno));
}
