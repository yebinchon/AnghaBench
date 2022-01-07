
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {char* width; int label; } ;
struct bsdstat {unsigned char* fmts; struct fmt* stats; } ;
typedef int FILE ;


 unsigned char const FMTS_IS_STAT ;
 int fprintf (int *,char*,char*,int ) ;
 int putc (unsigned char const,int *) ;

__attribute__((used)) static void
bsdstat_print_header(struct bsdstat *sf, FILE *fd)
{
 const unsigned char *cp;
 int i;
 const struct fmt *f;

 for (cp = sf->fmts; *cp != '\0'; cp++) {
  if (*cp == FMTS_IS_STAT) {
   i = *(++cp);
   i |= ((int) *(++cp)) << 8;
   f = &sf->stats[i];
   fprintf(fd, "%*s", f->width, f->label);
  } else
   putc(*cp, fd);
 }
 putc('\n', fd);
}
