
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint {char* addr_string; scalar_t__ number; } ;
struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {int dummy; } ;
struct symtab {int dummy; } ;


 struct symtabs_and_lines decode_line_1 (char**,int,struct symtab*,int ,char***,int *) ;
 int error (char*) ;
 scalar_t__ info_verbose ;
 int printf_filtered (char*,...) ;
 int resolve_sal_pc (struct symtab_and_line*) ;
 char* savestring (char*,int) ;
 struct tracepoint* set_raw_tracepoint (struct symtab_and_line) ;
 int set_tracepoint_count (scalar_t__) ;
 int trace_mention (struct tracepoint*) ;
 scalar_t__ tracepoint_count ;

__attribute__((used)) static void
trace_command (char *arg, int from_tty)
{
  char **canonical = (char **) ((void*)0);
  struct symtabs_and_lines sals;
  struct symtab_and_line sal;
  struct tracepoint *t;
  char *addr_start = 0, *addr_end = 0;
  int i;

  if (!arg || !*arg)
    error ("trace command requires an argument");

  if (from_tty && info_verbose)
    printf_filtered ("TRACE %s\n", arg);

  addr_start = arg;
  sals = decode_line_1 (&arg, 1, (struct symtab *) ((void*)0), 0, &canonical, ((void*)0));
  addr_end = arg;
  if (!sals.nelts)
    return;


  for (i = 0; i < sals.nelts; i++)
    resolve_sal_pc (&sals.sals[i]);


  for (i = 0; i < sals.nelts; i++)
    {
      sal = sals.sals[i];

      t = set_raw_tracepoint (sal);
      set_tracepoint_count (tracepoint_count + 1);
      t->number = tracepoint_count;



      if (canonical != (char **) ((void*)0) && canonical[i] != ((void*)0))
 t->addr_string = canonical[i];
      else if (addr_start)
 t->addr_string = savestring (addr_start, addr_end - addr_start);

      trace_mention (t);
    }

  if (sals.nelts > 1)
    {
      printf_filtered ("Multiple tracepoints were set.\n");
      printf_filtered ("Use 'delete trace' to delete unwanted tracepoints.\n");
    }
}
