
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bsdstat {int nstats; char* name; char* fmts; TYPE_1__* stats; } ;
typedef int fmt ;
struct TYPE_2__ {int name; } ;


 char FMTS_IS_STAT ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;
 scalar_t__ strcasecmp (char*,int ) ;
 int strlcpy (char*,char const*,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
bsdstat_setfmt(struct bsdstat *sf, const char *fmt0)
{

 char fmt[4096];
 char *fp, *tok;
 int i, j;

 j = 0;
 strlcpy(fmt, fmt0, sizeof(fmt));
 for (fp = fmt; (tok = strsep(&fp, ", ")) != ((void*)0);) {
  for (i = 0; i < sf->nstats; i++)
   if (strcasecmp(tok, sf->stats[i].name) == 0)
    break;
  if (i >= sf->nstats) {
   fprintf(stderr, "%s: unknown statistic name \"%s\" "
    "skipped\n", sf->name, tok);
   continue;
  }
  if (j+4 > (int) sizeof(sf->fmts)) {
   fprintf(stderr, "%s: not enough room for all stats; "
    "stopped at %s\n", sf->name, tok);
   break;
  }
  if (j != 0)
   sf->fmts[j++] = ' ';
  sf->fmts[j++] = FMTS_IS_STAT;
  sf->fmts[j++] = i & 0xff;
  sf->fmts[j++] = (i >> 8) & 0xff;
 }
 sf->fmts[j] = '\0';

}
