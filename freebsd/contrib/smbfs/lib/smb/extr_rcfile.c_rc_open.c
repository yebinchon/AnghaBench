
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcfile {int * rf_f; int rf_name; } ;
typedef int FILE ;


 int ENOMEM ;
 int SLIST_INSERT_HEAD (int *,struct rcfile*,int ) ;
 int bzero (struct rcfile*,int) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char const*) ;
 struct rcfile* malloc (int) ;
 int pf_head ;
 struct rcfile* rc_cachelookup (char const*) ;
 int rc_parse (struct rcfile*) ;
 int rf_next ;
 int strdup (char const*) ;

int
rc_open(const char *filename, const char *mode, struct rcfile **rcfile)
{
 struct rcfile *rcp;
 FILE *f;

 rcp = rc_cachelookup(filename);
 if (rcp) {
  *rcfile = rcp;
  return 0;
 }
 f = fopen(filename, mode);
 if (f == ((void*)0))
  return errno;
 rcp = malloc(sizeof(struct rcfile));
 if (rcp == ((void*)0)) {
  fclose(f);
  return ENOMEM;
 }
 bzero(rcp, sizeof(struct rcfile));
 rcp->rf_name = strdup(filename);
 rcp->rf_f = f;
 SLIST_INSERT_HEAD(&pf_head, rcp, rf_next);
 rc_parse(rcp);
 *rcfile = rcp;
 return 0;
}
