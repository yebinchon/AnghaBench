
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcfile {int * rf_f; } ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int rc_open (char const*,char*,struct rcfile**) ;
 int rc_parse (struct rcfile*) ;

int
rc_merge(const char *filename, struct rcfile **rcfile)
{
 struct rcfile *rcp = *rcfile;
 FILE *f, *t;

 if (rcp == ((void*)0)) {
  return rc_open(filename, "r", rcfile);
 }
 f = fopen (filename, "r");
 if (f == ((void*)0))
  return errno;
 t = rcp->rf_f;
 rcp->rf_f = f;
 rc_parse(rcp);
 rcp->rf_f = t;
 fclose(f);
 return 0;
}
