
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * node; int clock_seq_low; int clock_seq_hi_and_reserved; int time_hi_and_version; int time_mid; int time_low; } ;
typedef TYPE_1__ uuid_t ;
typedef int uint32_t ;


 int asprintf (char**,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int uuid_create_nil (TYPE_1__*,int *) ;
 int uuid_s_no_memory ;
 int uuid_s_ok ;

void
uuid_to_string(const uuid_t *u, char **s, uint32_t *status)
{
 uuid_t nil;

 if (status != ((void*)0))
  *status = uuid_s_ok;


 if (s == ((void*)0))
  return;

 if (u == ((void*)0)) {
  u = &nil;
  uuid_create_nil(&nil, ((void*)0));
 }

 asprintf(s, "%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x",
     u->time_low, u->time_mid, u->time_hi_and_version,
     u->clock_seq_hi_and_reserved, u->clock_seq_low, u->node[0],
     u->node[1], u->node[2], u->node[3], u->node[4], u->node[5]);

 if (*s == ((void*)0) && status != ((void*)0))
  *status = uuid_s_no_memory;
}
