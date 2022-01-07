
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_stat {int dummy; } ;
struct url {int offset; int doc; } ;
typedef int FILE ;


 int SEEK_SET ;
 int fclose (int *) ;
 int fetchStatFile (struct url*,struct url_stat*,char const*) ;
 int fetch_syserr () ;
 int * fopen (int ,char*) ;
 int fseeko (int *,int ,int ) ;

FILE *
fetchXGetFile(struct url *u, struct url_stat *us, const char *flags)
{
 FILE *f;

 if (us && fetchStatFile(u, us, flags) == -1)
  return (((void*)0));

 f = fopen(u->doc, "re");

 if (f == ((void*)0)) {
  fetch_syserr();
  return (((void*)0));
 }

 if (u->offset && fseeko(f, u->offset, SEEK_SET) == -1) {
  fclose(f);
  fetch_syserr();
  return (((void*)0));
 }

 return (f);
}
