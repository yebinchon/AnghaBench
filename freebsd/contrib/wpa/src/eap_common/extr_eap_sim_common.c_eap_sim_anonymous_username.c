
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;


 scalar_t__ os_memcmp (char const*,char const*,size_t) ;
 size_t os_strlen (char const*) ;

int eap_sim_anonymous_username(const u8 *id, size_t id_len)
{
 static const char *anonymous_id_prefix = "anonymous@";
 size_t anonymous_id_len = os_strlen(anonymous_id_prefix);

 if (id_len > anonymous_id_len &&
     os_memcmp(id, anonymous_id_prefix, anonymous_id_len) == 0)
  return 1;

 if (id_len > 1 && id[0] == '@')
  return 1;

 return 0;
}
