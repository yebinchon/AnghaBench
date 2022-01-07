
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;


 int LOG_ERR ;
 int get_match (char const*,int ) ;
 int get_pfxmatch (char const**,int ) ;
 int logcfg_class ;
 int logcfg_class_items ;
 int logcfg_noclass_items ;
 int msyslog (int ,char*,char const*) ;

__attribute__((used)) static u_int32
get_logmask(
 const char * str
 )
{
 const char * t;
 u_int32 offset;
 u_int32 mask;

 mask = get_match(str, logcfg_noclass_items);
 if (mask != 0)
  return mask;

 t = str;
 offset = get_pfxmatch(&t, logcfg_class);
 mask = get_match(t, logcfg_class_items);

 if (mask)
  return mask << offset;
 else
  msyslog(LOG_ERR, "logconfig: '%s' not recognized - ignored",
   str);

 return 0;
}
