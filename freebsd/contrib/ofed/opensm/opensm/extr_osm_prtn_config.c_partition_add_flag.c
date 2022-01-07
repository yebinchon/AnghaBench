
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct part_conf {int is_ipoib; int p_log; int indx0; int membership; int flags; } ;


 int BOTH ;
 int FULL ;
 int LIMITED ;
 int OSM_LOG (int ,int ,char*,unsigned int,...) ;
 int OSM_LOG_VERBOSE ;
 int TRUE ;
 scalar_t__ parse_group_flag (unsigned int,int ,int *,char*,char*) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int partition_add_flag(unsigned lineno, struct part_conf *conf,
         char *flag, char *val)
{
 int len = strlen(flag);


 if (parse_group_flag(lineno, conf->p_log, &conf->flags, flag, val))
  return 0;


 if (!strncmp(flag, "ipoib", len)) {
  conf->is_ipoib = 1;
 } else if (!strncmp(flag, "defmember", len)) {
  if (!val || (strncmp(val, "limited", strlen(val))
        && strncmp(val, "both", strlen(val))
        && strncmp(val, "full", strlen(val))))
   OSM_LOG(conf->p_log, OSM_LOG_VERBOSE,
    "PARSE WARN: line %d: "
    "flag \'defmember\' requires valid value (limited or full or both)"
    " - skipped\n", lineno);
  else {
   if (!strncmp(val, "full", strlen(val)))
    conf->membership = FULL;
   else if (!strncmp(val, "both", strlen(val)))
    conf->membership = BOTH;
   else
    conf->membership = LIMITED;
  }
 } else if (!strcmp(flag, "indx0"))
  conf->indx0 = TRUE;
 else {
  OSM_LOG(conf->p_log, OSM_LOG_VERBOSE,
   "PARSE WARN: line %d: "
   "unrecognized partition flag \'%s\'"
   " - ignored\n", lineno, flag);
 }
 return 0;
}
