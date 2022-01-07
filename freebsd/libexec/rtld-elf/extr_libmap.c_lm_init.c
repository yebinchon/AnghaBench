
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAILQ_INIT (int *) ;
 int dbg (char*,char*) ;
 int free (char*) ;
 int ld_path_libmap_conf ;
 scalar_t__ lm_count ;
 int lmc_parse (char*,int) ;
 int lmc_parse_file (int ) ;
 int lmp_head ;
 char* xstrdup (char*) ;

int
lm_init(char *libmap_override)
{
 char *p;

 dbg("lm_init(\"%s\")", libmap_override);
 TAILQ_INIT(&lmp_head);

 lmc_parse_file(ld_path_libmap_conf);

 if (libmap_override) {




  libmap_override = xstrdup(libmap_override);
  for (p = libmap_override; *p; p++) {
   switch (*p) {
   case '=':
    *p = ' ';
    break;
   case ',':
    *p = '\n';
    break;
   }
  }
  lmc_parse(libmap_override, p - libmap_override);
  free(libmap_override);
 }

 return (lm_count == 0);
}
