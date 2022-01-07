
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct part_conf {int dummy; } ;
typedef int osm_subn_t ;
typedef int osm_log_t ;
typedef int line ;
typedef int FILE ;


 int OSM_LOG (int *,int ,char*,...) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_VERBOSE ;
 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int flush_part_conf (struct part_conf*) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,int) ;
 struct part_conf* new_part_conf (int *,int *) ;
 int parse_part_conf (struct part_conf*,char*,int) ;
 int stderr ;
 char* strchr (char*,char) ;
 int strerror (int ) ;

int osm_prtn_config_parse_file(osm_log_t * p_log, osm_subn_t * p_subn,
          const char *file_name)
{
 char line[4096];
 struct part_conf *conf = ((void*)0);
 FILE *file;
 int lineno;
 int is_parse_success;

 line[0] = '\0';
 file = fopen(file_name, "r");
 if (!file) {
  OSM_LOG(p_log, OSM_LOG_VERBOSE,
   "Cannot open config file \'%s\': %s\n",
   file_name, strerror(errno));
  return -1;
 }

 lineno = 0;

 is_parse_success = 0;

 while (fgets(line, sizeof(line) - 1, file) != ((void*)0)) {
  char *q, *p = line;

  lineno++;

  p = line;

  q = strchr(p, '#');
  if (q)
   *q = '\0';

  do {
   int len;
   while (*p == ' ' || *p == '\t' || *p == '\n')
    p++;
   if (*p == '\0')
    break;

   if (!conf && !(conf = new_part_conf(p_log, p_subn))) {
    OSM_LOG(p_log, OSM_LOG_ERROR,
     "PARSE ERROR: line %d: "
     "internal: cannot create config\n",
     lineno);
    fprintf(stderr,
     "PARSE ERROR: line %d: "
     "internal: cannot create config\n",
     lineno);
    is_parse_success = -1;
    break;
   }

   q = strchr(p, ';');
   if (q)
    *q = '\0';

   len = parse_part_conf(conf, p, lineno);
   if (len < 0) {
    is_parse_success = -1;
    break;
   }

   is_parse_success = 1;

   p += len;

   if (q) {
    flush_part_conf(conf);
    conf = ((void*)0);
   }
  } while (q);

  if (is_parse_success == -1)
   break;
 }

 fclose(file);

 return (is_parse_success == 1) ? 0 : 1;
}
