
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * node; int clock_seq_low; int clock_seq_hi_and_reserved; int time_hi_and_version; int time_mid; int time_low; } ;
typedef TYPE_1__ uuid_t ;
typedef int uint32_t ;


 char* malloc (int) ;
 int tohex (char**,int,int ) ;
 int uuid_create_nil (TYPE_1__*,int *) ;
 int uuid_s_no_memory ;
 int uuid_s_ok ;

void
uuid_to_string(const uuid_t *u, char **s, uint32_t *status)
{
 uuid_t nil;
 char *w;

 if (status != ((void*)0))
  *status = uuid_s_ok;
 if (s == ((void*)0))
  return;
 w = *s = malloc(37);
 if (*s == ((void*)0)) {
  if (status != ((void*)0))
   *status = uuid_s_no_memory;
  return;
 }
 if (u == ((void*)0)) {
  u = &nil;
  uuid_create_nil(&nil, ((void*)0));
 }

 tohex(&w, 8, u->time_low);
 *w++ = '-';
 tohex(&w, 4, u->time_mid);
 *w++ = '-';
 tohex(&w, 4, u->time_hi_and_version);
 *w++ = '-';

 tohex(&w, 2, u->clock_seq_hi_and_reserved);
 tohex(&w, 2, u->clock_seq_low);
 *w++ = '-';
 tohex(&w, 2, u->node[0]);
 tohex(&w, 2, u->node[1]);
 tohex(&w, 2, u->node[2]);
 tohex(&w, 2, u->node[3]);
 tohex(&w, 2, u->node[4]);
 tohex(&w, 2, u->node[5]);
 *w++ = '\0';
}
