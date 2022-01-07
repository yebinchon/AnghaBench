
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int offset; int doc; } ;
typedef int FILE ;


 scalar_t__ CHECK_FLAG (char) ;
 int SEEK_SET ;
 int fclose (int *) ;
 int fetch_syserr () ;
 int * fopen (int ,char*) ;
 int fseeko (int *,int ,int ) ;

FILE *
fetchPutFile(struct url *u, const char *flags)
{
 FILE *f;

 if (CHECK_FLAG('a'))
  f = fopen(u->doc, "ae");
 else
  f = fopen(u->doc, "w+e");

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
