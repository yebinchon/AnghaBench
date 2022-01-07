
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int clock_seq_hi_and_reserved; int * node; int clock_seq_low; int time_hi_and_version; int time_mid; int time_low; } ;
typedef TYPE_1__ uuid_t ;
typedef int uint32_t ;


 int sscanf (char const*,char*,int *,int *,int *,int*,int *,int *,int *,int *,int *,int *,int *) ;
 int strlen (char const*) ;
 int uuid_create_nil (TYPE_1__*,int *) ;
 int uuid_s_bad_version ;
 int uuid_s_invalid_string_uuid ;
 int uuid_s_ok ;

void
uuid_from_string(const char *s, uuid_t *u, uint32_t *status)
{
 int n;


 if (s == ((void*)0) || *s == '\0') {
  uuid_create_nil(u, status);
  return;
 }


 if (status != ((void*)0))
  *status = uuid_s_invalid_string_uuid;


 if (strlen(s) != 36)
  return;







 if (s[8] != '-')
  return;

 n = sscanf(s,
     "%8x-%4hx-%4hx-%2hhx%2hhx-%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx",
     &u->time_low, &u->time_mid, &u->time_hi_and_version,
     &u->clock_seq_hi_and_reserved, &u->clock_seq_low, &u->node[0],
     &u->node[1], &u->node[2], &u->node[3], &u->node[4], &u->node[5]);


 if (n != 11)
  return;


 n = u->clock_seq_hi_and_reserved;
 if ((n & 0x80) != 0x00 &&
     (n & 0xc0) != 0x80 &&
     (n & 0xe0) != 0xc0) {
  if (status != ((void*)0))
   *status = uuid_s_bad_version;
 } else {
  if (status != ((void*)0))
   *status = uuid_s_ok;
 }
}
