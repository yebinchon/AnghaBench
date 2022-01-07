
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * node; int clock_seq_low; int clock_seq_hi_and_reserved; int time_hi_and_version; int time_mid; int time_low; } ;
typedef TYPE_1__ uuid_t ;
typedef int uint8_t ;


 int _UUID_NODE_LEN ;
 int be16enc (int *,int ) ;
 int be32enc (int *,int ) ;

void
uuid_enc_be(void *buf, const uuid_t *uuid)
{
 uint8_t *p = buf;
 int i;

 be32enc(p, uuid->time_low);
 be16enc(p + 4, uuid->time_mid);
 be16enc(p + 6, uuid->time_hi_and_version);
 p[8] = uuid->clock_seq_hi_and_reserved;
 p[9] = uuid->clock_seq_low;
 for (i = 0; i < _UUID_NODE_LEN; i++)
  p[10 + i] = uuid->node[i];
}
