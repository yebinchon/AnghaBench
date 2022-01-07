
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int fgetc (int *) ;
 int ungetc (int,int *) ;

void
ldns_fskipcs_l(FILE *fp, const char *s, int *line_nr)
{
        bool found;
        int c;
        const char *d;

 while ((c = fgetc(fp)) != EOF) {
  if (line_nr && c == '\n') {
   *line_nr = *line_nr + 1;
  }
                found = 0;
                for (d = s; *d; d++) {
                        if (*d == c) {
                                found = 1;
                        }
                }
  if (!found) {

   ungetc(c, fp);
   return;
  }
 }
}
