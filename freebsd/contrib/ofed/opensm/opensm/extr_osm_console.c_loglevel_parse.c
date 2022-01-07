
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log; } ;
typedef TYPE_1__ osm_opensm_t ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;
 char* next_token (char**) ;
 int osm_log_get_level (int *) ;
 int osm_log_set_level (int *,int) ;
 int strncmp (char*,char*,int) ;
 int strtol (char*,int *,int) ;
 int strtoul (char*,int *,int) ;

__attribute__((used)) static void loglevel_parse(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
 char *p_cmd;
 int level;

 p_cmd = next_token(p_last);
 if (!p_cmd)
  fprintf(out, "Current log level is 0x%x\n",
   osm_log_get_level(&p_osm->log));
 else {

  if (!strncmp(p_cmd, "x", 1)) {
   p_cmd++;
   level = strtoul(p_cmd, ((void*)0), 16);
  } else {
   if (!strncmp(p_cmd, "0x", 2)) {
    p_cmd += 2;
    level = strtoul(p_cmd, ((void*)0), 16);
   } else
    level = strtol(p_cmd, ((void*)0), 10);
  }
  if ((level >= 0) && (level < 256)) {
   fprintf(out, "Setting log level to 0x%x\n", level);
   osm_log_set_level(&p_osm->log, level);
  } else
   fprintf(out, "Invalid log level 0x%x\n", level);
 }
}
