
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modification {int m1; int m2; int what; int offset; } ;


 int MOD_AND_OR ;
 int MOD_XOR ;
 int bzero (struct modification*,int) ;
 int errx (int,char*,...) ;
 int sscanf (char const*,char*,char*,int *,int*,int*) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static void
parse_modification(const char *s, struct modification *m)
{
 char what[16+1];
 int n, m1, m2;

 bzero(m, sizeof(*m));
 if ((n = sscanf(s, "%16[^:]%*[:]%llu%*[:]%i%*[:]%i",
     what, &m->offset, &m1, &m2)) < 3)
  errx(1, "Invalid modification spec \"%s\"", s);
 if (strcasecmp(what, "xor") == 0) {
  if (n > 3)
   errx(1, "Invalid modification spec \"%s\"", s);
  if (m1 < 0 || m1 > 0xff)
   errx(1, "Invalid XOR modification value");
  m->what = MOD_XOR;
  m->m1 = m1;
 } else if (strcasecmp(what, "andor") == 0) {
  if (n != 4)
   errx(1, "Invalid modification spec \"%s\"", s);
  if (m1 < 0 || m1 > 0xff)
   errx(1, "Invalid AND modification value");
  if (m2 < 0 || m2 > 0xff)
   errx(1, "Invalid OR modification value");
  m->what = MOD_AND_OR;
  m->m1 = m1;
  m->m2 = m2;
 } else
  errx(1, "Invalid modification type \"%s\"", what);
}
