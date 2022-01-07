
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printc {int show_all_datasets; int show_space; int script_fmt; int show_snaps; } ;
typedef int pc ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int be ;
 scalar_t__ be_get_bootenv_props (int ,int *) ;
 scalar_t__ be_prop_list_alloc (int **) ;
 int be_prop_list_free (int *) ;
 int bzero (struct printc*,int) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int nvpair_value_nvlist (int *,int **) ;
 char* optarg ;
 scalar_t__ optind ;
 int optopt ;
 int print_headers (int *,struct printc*) ;
 int print_info (int ,int *,struct printc*) ;
 int printf (char*) ;
 int prop_list_sort (int *,char*,int) ;
 int stderr ;
 char* strdup (char*) ;
 int usage (int) ;

int
bectl_cmd_list(int argc, char *argv[])
{
 struct printc pc;
 nvpair_t *cur;
 nvlist_t *dsprops, *props;
 int opt, printed;
 char *column;
 bool reverse;

 column = ((void*)0);
 props = ((void*)0);
 printed = 0;
 bzero(&pc, sizeof(pc));
 reverse = 0;
 while ((opt = getopt(argc, argv, "aDHsc:C:")) != -1) {
  switch (opt) {
  case 'a':
   pc.show_all_datasets = 1;
   break;
  case 'D':
   pc.show_space = 1;
   break;
  case 'H':
   pc.script_fmt = 1;
   break;
  case 's':
   pc.show_snaps = 1;
   break;
  case 'c':
   if (column != ((void*)0))
    free(column);
   column = strdup(optarg);
   reverse = 0;
   break;
  case 'C':
   if (column != ((void*)0))
    free(column);
   column = strdup(optarg);
   reverse = 1;
   break;
  default:
   fprintf(stderr, "bectl list: unknown option '-%c'\n",
       optopt);
   return (usage(0));
  }
 }

 argc -= optind;

 if (argc != 0) {
  fprintf(stderr, "bectl list: extra argument provided\n");
  return (usage(0));
 }

 if (be_prop_list_alloc(&props) != 0) {
  fprintf(stderr, "bectl list: failed to allocate prop nvlist\n");
  return (1);
 }
 if (be_get_bootenv_props(be, props) != 0) {

  fprintf(stderr, "bectl list: failed to fetch boot environments\n");
  return (1);
 }


 if (column == ((void*)0))
  column = strdup("name");

 prop_list_sort(props, column, reverse);


 if (pc.show_all_datasets || pc.show_snaps)
  pc.show_space = 0;
 if (!pc.script_fmt)
  print_headers(props, &pc);


 for (cur = nvlist_next_nvpair(props, ((void*)0)); cur != ((void*)0);
     cur = nvlist_next_nvpair(props, cur)) {
  nvpair_value_nvlist(cur, &dsprops);

  if (printed > 0 && (pc.show_all_datasets || pc.show_snaps))
   printf("\n");

  print_info(nvpair_name(cur), dsprops, &pc);
  printed++;
 }

 free(column);
 be_prop_list_free(props);

 return (0);
}
