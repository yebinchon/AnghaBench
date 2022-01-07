
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct perf_entry_data {int topic; int outfp; } ;
struct FTW {int level; int base; } ;


 int ENOMEM ;
 int FTW_D ;
 int FTW_F ;
 scalar_t__ add_topic (char const*) ;
 scalar_t__ close_table ;
 int eventsfp ;
 char* file_name_to_table_name (char const*) ;
 int free (int ) ;
 int get_topic () ;
 int is_json_file (char const*) ;
 scalar_t__ is_leaf_dir (char const*) ;
 int json_events (char const*,int ,struct perf_entry_data*) ;
 int mapfile ;
 int pr_debug (char*,char*,int,int ,char const*,char const*) ;
 int pr_info (char*,int ,char const*) ;
 int print_events_table_entry ;
 int print_events_table_prefix (int ,char*) ;
 int print_events_table_suffix (int ) ;
 int prog ;
 int strcmp (char const*,char*) ;
 int strdup (char const*) ;

__attribute__((used)) static int process_one_file(const char *fpath, const struct stat *sb,
       int typeflag, struct FTW *ftwbuf)
{
 char *tblname;
 const char *bname;
 int is_dir = typeflag == FTW_D;
 int is_file = typeflag == FTW_F;
 int level = ftwbuf->level;
 int err = 0;

 if (level == 2 && is_dir) {





  bname = fpath + ftwbuf->base - 2;
  for (;;) {
   if (*bname == '/')
    break;
   bname--;
  }
  bname++;
 } else
  bname = fpath + ftwbuf->base;

 pr_debug("%s %d %7jd %-20s %s\n",
   is_file ? "f" : is_dir ? "d" : "x",
   level, sb->st_size, bname, fpath);


 if (level == 0 || level > 3)
  return 0;



 if ((level == 1 && is_dir && is_leaf_dir(fpath)) ||
     (level == 2 && is_dir)) {
  if (close_table)
   print_events_table_suffix(eventsfp);






  tblname = file_name_to_table_name(bname);
  if (!tblname) {
   pr_info("%s: Error determining table name for %s\n", prog,
    bname);
   return -1;
  }

  print_events_table_prefix(eventsfp, tblname);
  return 0;
 }







 if (level == 1 && is_file) {
  if (!strcmp(bname, "mapfile.csv")) {
   mapfile = strdup(fpath);
   return 0;
  }

  pr_info("%s: Ignoring file %s\n", prog, fpath);
  return 0;
 }





 if (is_file) {
  if (!is_json_file(bname)) {
   pr_info("%s: Ignoring file without .json suffix %s\n", prog,
    fpath);
   return 0;
  }
 }

 if (level > 1 && add_topic(bname))
  return -ENOMEM;
 if (is_file) {
  struct perf_entry_data data = {
   .topic = get_topic(),
   .outfp = eventsfp,
  };

  err = json_events(fpath, print_events_table_entry, &data);

  free(data.topic);
 }

 return err;
}
