
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int clock_seq_hi_and_reserved; void** node; void* clock_seq_low; void* time_hi_and_version; void* time_mid; void* time_low; } ;
typedef TYPE_1__ uuid_t ;
typedef int uint32_t ;


 void* fromhex (char const*,int,int*) ;
 int strlen (char const*) ;
 int uuid_create_nil (TYPE_1__*,int *) ;
 int uuid_s_bad_version ;
 int uuid_s_invalid_string_uuid ;
 int uuid_s_ok ;

void
uuid_from_string(const char *s, uuid_t *u, uint32_t *status)
{
 int ok = 1;
 int n;

 if (s == ((void*)0) || *s == '\0') {
  uuid_create_nil(u, status);
  return;
 }

 if (status != ((void*)0))
  *status = uuid_s_invalid_string_uuid;
 if (strlen(s) != 36)
  return;

 if (s[8] != '-' || s[13] != '-' || s[18] != '-' || s[23] != '-')
  return;

 u->time_low = fromhex(s , 8, &ok);
 u->time_mid = fromhex(s + 9, 4, &ok);
 u->time_hi_and_version = fromhex(s + 14, 4, &ok);

 u->clock_seq_hi_and_reserved = fromhex(s + 19, 2, &ok);
 u->clock_seq_low = fromhex(s + 21, 2, &ok);
 u->node[0] = fromhex(s + 24, 2, &ok);
 u->node[1] = fromhex(s + 26, 2, &ok);
 u->node[2] = fromhex(s + 28, 2, &ok);
 u->node[3] = fromhex(s + 30, 2, &ok);
 u->node[4] = fromhex(s + 32, 2, &ok);
 u->node[5] = fromhex(s + 34, 2, &ok);
 if (!ok)
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
