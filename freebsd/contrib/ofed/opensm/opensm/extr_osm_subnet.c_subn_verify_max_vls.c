
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSM_DEFAULT_QOS_MAX_VLS ;
 int log_report (char*,char const*,unsigned int,int ) ;

__attribute__((used)) static void subn_verify_max_vls(unsigned *max_vls, const char *prefix)
{
 if (!*max_vls || *max_vls > 15) {
  if (*max_vls)
   log_report(" Invalid Cached Option: %s_max_vls=%u: "
       "Using Default = %u\n",
       prefix, *max_vls, OSM_DEFAULT_QOS_MAX_VLS);
  *max_vls = 0;
 }
}
