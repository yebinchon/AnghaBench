
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {char* width; } ;
struct bsdstat {unsigned char* fmts; scalar_t__ (* get_curstat ) (struct bsdstat*,int,char*,int) ;struct fmt* stats; } ;
typedef int buf ;
typedef int FILE ;


 unsigned char const FMTS_IS_STAT ;
 int fprintf (int *,char*,char*,char*) ;
 int putc (unsigned char const,int *) ;
 scalar_t__ stub1 (struct bsdstat*,int,char*,int) ;

__attribute__((used)) static void
bsdstat_print_current(struct bsdstat *sf, FILE *fd)
{
 char buf[32];
 const unsigned char *cp;
 int i;
 const struct fmt *f;

 for (cp = sf->fmts; *cp != '\0'; cp++) {
  if (*cp == FMTS_IS_STAT) {
   i = *(++cp);
   i |= ((int) *(++cp)) << 8;
   f = &sf->stats[i];
   if (sf->get_curstat(sf, i, buf, sizeof(buf)))
    fprintf(fd, "%*s", f->width, buf);
  } else
   putc(*cp, fd);
 }
 putc('\n', fd);
}
