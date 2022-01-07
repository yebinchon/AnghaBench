
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * node; int clock_seq_low; int clock_seq_hi_and_reserved; void* time_hi_and_version; void* time_mid; int time_low; } ;
typedef TYPE_1__ uuid_t ;
typedef int uint8_t ;


 int _UUID_NODE_LEN ;
 void* le16dec (int const*) ;
 int le32dec (int const*) ;

void
uuid_dec_le(const void *buf, uuid_t *uuid)
{
 const uint8_t *p = buf;
 int i;

 uuid->time_low = le32dec(p);
 uuid->time_mid = le16dec(p + 4);
 uuid->time_hi_and_version = le16dec(p + 6);
 uuid->clock_seq_hi_and_reserved = p[8];
 uuid->clock_seq_low = p[9];
 for (i = 0; i < _UUID_NODE_LEN; i++)
  uuid->node[i] = p[10 + i];
}
