
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* v; } ;
typedef TYPE_1__ shortsc25519 ;



void shortsc25519_from16bytes(shortsc25519 *r, const unsigned char x[16])
{
  int i;
  for(i=0;i<16;i++) r->v[i] = x[i];
}
