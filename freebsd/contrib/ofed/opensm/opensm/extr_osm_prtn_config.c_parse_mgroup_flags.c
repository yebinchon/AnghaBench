
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct precreate_mgroup {int flags; } ;
typedef int osm_log_t ;


 int OSM_LOG (int *,int ,char*,unsigned int,char*) ;
 int OSM_LOG_VERBOSE ;
 int parse_group_flag (unsigned int,int *,int *,char*,char*) ;
 int parse_name_token (char*,char**,char**) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int parse_mgroup_flags(osm_log_t * p_log,
    struct precreate_mgroup *mgroup,
    char *p, unsigned lineno)
{
 int ret, len = 0;
 char *flag, *val, *q;
 do {
  flag = val = ((void*)0);
  q = strchr(p, ',');
  if (q)
   *q++ = '\0';

  ret = parse_name_token(p, &flag, &val);

  if (!parse_group_flag(lineno, p_log, &mgroup->flags,
         flag, val)) {
   OSM_LOG(p_log, OSM_LOG_VERBOSE,
    "PARSE WARN: line %d: "
    "unrecognized mgroup flag \'%s\'"
    " - ignored\n", lineno, flag);
  }
  p += ret;
  len += ret;
 } while (q);

 return (len);
}
