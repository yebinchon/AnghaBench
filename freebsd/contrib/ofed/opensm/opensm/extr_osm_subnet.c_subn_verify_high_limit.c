
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSM_DEFAULT_QOS_HIGH_LIMIT ;
 int log_report (char*,char const*,int,int ) ;

__attribute__((used)) static void subn_verify_high_limit(int *high_limit, const char *prefix)
{
 if (*high_limit < 0 || *high_limit > 255) {
  if (*high_limit > 255)
   log_report(" Invalid Cached Option: %s_high_limit=%d: "
       "Using Default: %d\n",
       prefix, *high_limit,
       OSM_DEFAULT_QOS_HIGH_LIMIT);
  *high_limit = -1;
 }
}
