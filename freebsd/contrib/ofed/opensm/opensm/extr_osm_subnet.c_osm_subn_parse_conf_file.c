
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char const* config_file; TYPE_6__* file_opts; } ;
typedef TYPE_1__ osm_subn_opt_t ;
struct TYPE_10__ {int opt_offset; int (* parse_fn ) (int *,char*,char*,void*,void*,int *) ;scalar_t__ name; } ;
typedef TYPE_2__ opt_rec_t ;
struct TYPE_11__ {int * file_opts; } ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 char* clean_val (char*) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int log_report (char*,char*) ;
 TYPE_6__* malloc (int) ;
 int memcpy (TYPE_6__*,TYPE_1__*,int) ;
 TYPE_2__* opt_tbl ;
 int osm_subn_verify_config (TYPE_1__*) ;
 int printf (char*,char const*,...) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 char* strerror (scalar_t__) ;
 char* strtok_r (char*,char*,char**) ;
 int stub1 (int *,char*,char*,void*,void*,int *) ;

int osm_subn_parse_conf_file(const char *file_name, osm_subn_opt_t * p_opts)
{
 char line[1024];
 FILE *opts_file;
 char *p_key, *p_val, *pound_sign;
 const opt_rec_t *r;
 void *p_field1, *p_field2;
 int token_matched;

 opts_file = fopen(file_name, "r");
 if (!opts_file) {
  if (errno == ENOENT)
   return 1;
  printf("cannot open file \'%s\': %s\n",
         file_name, strerror(errno));
  return -1;
 }

 printf(" Reading Cached Option File: %s\n", file_name);

 p_opts->config_file = file_name;
 if (!p_opts->file_opts && !(p_opts->file_opts = malloc(sizeof(*p_opts)))) {
  fclose(opts_file);
  return -1;
 }
 memcpy(p_opts->file_opts, p_opts, sizeof(*p_opts));
 p_opts->file_opts->file_opts = ((void*)0);

 while (fgets(line, 1023, opts_file) != ((void*)0)) {
  pound_sign = strchr(line,'#');
  token_matched = 0;

  if (pound_sign)
   *pound_sign = '\0';


  p_key = strtok_r(line, " \t\n", &p_val);
  if (!p_key)
   continue;

  p_val = clean_val(p_val);

  for (r = opt_tbl; r->name; r++) {
   if (strcmp(r->name, p_key))
    continue;

   token_matched = 1;
   p_field1 = (void *)p_opts->file_opts + r->opt_offset;
   p_field2 = (void *)p_opts + r->opt_offset;

   r->parse_fn(((void*)0), p_key, p_val, p_field1, p_field2,
        ((void*)0));
   break;
  }

  if (!token_matched)
   log_report(" Unrecognized token: \"%s\"\n", p_key);
 }
 fclose(opts_file);

 osm_subn_verify_config(p_opts);

 return 0;
}
