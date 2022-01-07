
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct format_opts {int last; int first; int flags; } ;
struct cmdline_opts {scalar_t__ test_only; } ;
struct TYPE_5__ {size_t size; int opheader; int end_rule; int start_rule; int flags; } ;
typedef TYPE_1__ ipfw_cfg_lheader ;


 int ENOMEM ;
 int IP_FW_XGET ;
 TYPE_1__* calloc (int,size_t) ;
 scalar_t__ do_get3 (int ,int *,size_t*) ;
 int errno ;
 int fprintf (int ,char*) ;
 int free (TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static int
ipfw_get_config(struct cmdline_opts *co, struct format_opts *fo,
    ipfw_cfg_lheader **pcfg, size_t *psize)
{
 ipfw_cfg_lheader *cfg;
 size_t sz;
 int i;


 if (co->test_only != 0) {
  fprintf(stderr, "Testing only, list disabled\n");
  return (0);
 }


 sz = 4096;
 cfg = ((void*)0);

 for (i = 0; i < 16; i++) {
  if (cfg != ((void*)0))
   free(cfg);
  if ((cfg = calloc(1, sz)) == ((void*)0))
   return (ENOMEM);

  cfg->flags = fo->flags;
  cfg->start_rule = fo->first;
  cfg->end_rule = fo->last;

  if (do_get3(IP_FW_XGET, &cfg->opheader, &sz) != 0) {
   if (errno != ENOMEM) {
    free(cfg);
    return (errno);
   }


   sz = sz * 2;
   if (sz < cfg->size)
    sz = cfg->size;
   continue;
  }

  *pcfg = cfg;
  *psize = sz;
  return (0);
 }

 free(cfg);
 return (ENOMEM);
}
