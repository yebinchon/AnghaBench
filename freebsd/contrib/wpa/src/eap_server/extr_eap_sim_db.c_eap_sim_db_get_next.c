
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sim_db_data {int dummy; } ;
typedef int buf ;


 char* os_malloc (int) ;
 scalar_t__ random_get_bytes (int *,int) ;
 int wpa_snprintf_hex (char*,int,int *,int) ;

__attribute__((used)) static char * eap_sim_db_get_next(struct eap_sim_db_data *data, char prefix)
{
 char *id, *pos, *end;
 u8 buf[10];

 if (random_get_bytes(buf, sizeof(buf)))
  return ((void*)0);
 id = os_malloc(sizeof(buf) * 2 + 2);
 if (id == ((void*)0))
  return ((void*)0);

 pos = id;
 end = id + sizeof(buf) * 2 + 2;
 *pos++ = prefix;
 wpa_snprintf_hex(pos, end - pos, buf, sizeof(buf));

 return id;
}
