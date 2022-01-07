
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {int dummy; } ;
struct bsdstat {char const* name; int nstats; int print_fields; int print_verbose; int print_total; int print_current; int print_header; void* get_totstat; void* get_curstat; int update_tot; void* collect_tot; void* collect_cur; int setfmt; struct fmt const* stats; } ;


 void* bsdstat_collect ;
 void* bsdstat_get ;
 int bsdstat_print_current ;
 int bsdstat_print_fields ;
 int bsdstat_print_header ;
 int bsdstat_print_total ;
 int bsdstat_print_verbose ;
 int bsdstat_setfmt ;
 int bsdstat_update_tot ;

void
bsdstat_init(struct bsdstat *sf, const char *name, const struct fmt *stats, int nstats)
{
 sf->name = name;
 sf->stats = stats;
 sf->nstats = nstats;
 sf->setfmt = bsdstat_setfmt;
 sf->collect_cur = bsdstat_collect;
 sf->collect_tot = bsdstat_collect;
 sf->update_tot = bsdstat_update_tot;
 sf->get_curstat = bsdstat_get;
 sf->get_totstat = bsdstat_get;
 sf->print_header = bsdstat_print_header;
 sf->print_current = bsdstat_print_current;
 sf->print_total = bsdstat_print_total;
 sf->print_verbose = bsdstat_print_verbose;
 sf->print_fields = bsdstat_print_fields;
}
