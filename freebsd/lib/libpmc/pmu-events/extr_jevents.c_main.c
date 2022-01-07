
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int PATH_MAX ;
 scalar_t__ atoi (char*) ;
 int basename (char*) ;
 scalar_t__ close_table ;
 int create_empty_mapping (char const*) ;
 int errno ;
 int eventsfp ;
 int fclose (int ) ;
 int fopen (char const*,char*) ;
 int fprintf (int ,char*) ;
 int free_arch_std_events () ;
 int get_maxfds () ;
 char* mapfile ;
 int nftw_ordered (char*,int ,int,int ) ;
 int pr_err (char*,int ,...) ;
 int pr_info (char*,int ,...) ;
 int preprocess_arch_std_files ;
 int print_events_table_suffix (int ) ;
 scalar_t__ process_mapfile (int ,char*) ;
 int process_one_file ;
 int prog ;
 int sprintf (char*,char*,char const*,char const*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strerror (int ) ;
 scalar_t__ verbose ;

int main(int argc, char *argv[])
{
 int rc;
 int maxfds;
 char ldirname[PATH_MAX];

 const char *arch;
 const char *output_file;
 const char *start_dirname;
 struct stat stbuf;

 prog = basename(argv[0]);
 if (argc < 4) {
  pr_err("Usage: %s <arch> <starting_dir> <output_file>\n", prog);
  return 1;
 }

 arch = argv[1];
 start_dirname = argv[2];
 output_file = argv[3];

 if (argc > 4)
  verbose = atoi(argv[4]);

 eventsfp = fopen(output_file, "w");
 if (!eventsfp) {
  pr_err("%s Unable to create required file %s (%s)\n",
    prog, output_file, strerror(errno));
  return 2;
 }

 sprintf(ldirname, "%s/%s", start_dirname, arch);


 if (stat(ldirname, &stbuf) < 0) {
  pr_info("%s: Arch %s has no PMU event lists\n", prog, arch);
  goto empty_map;
 }


 fprintf(eventsfp, "#include \"pmu-events/pmu-events.h\"\n");
 maxfds = get_maxfds();
 mapfile = ((void*)0);
 rc = nftw_ordered(ldirname, preprocess_arch_std_files, maxfds, 0);
 if (rc && verbose) {
  pr_info("%s: Error preprocessing arch standard files %s: %s\n",
   prog, ldirname, strerror(errno));
  goto empty_map;
 } else if (rc < 0) {

  free_arch_std_events();
  return 1;
 } else if (rc) {
  goto empty_map;
 }

 rc = nftw_ordered(ldirname, process_one_file, maxfds, 0);
 if (rc && verbose) {
  pr_info("%s: Error walking file tree %s\n", prog, ldirname);
  goto empty_map;
 } else if (rc < 0) {

  free_arch_std_events();
  return 1;
 } else if (rc) {
  goto empty_map;
 }

 if (close_table)
  print_events_table_suffix(eventsfp);

 if (!mapfile) {
  pr_info("%s: No CPU->JSON mapping?\n", prog);
  goto empty_map;
 }

 if (process_mapfile(eventsfp, mapfile)) {
  pr_info("%s: Error processing mapfile %s\n", prog, mapfile);

  return 1;
 }

 return 0;

empty_map:
 fclose(eventsfp);
 create_empty_mapping(output_file);
 free_arch_std_events();
 return 0;
}
