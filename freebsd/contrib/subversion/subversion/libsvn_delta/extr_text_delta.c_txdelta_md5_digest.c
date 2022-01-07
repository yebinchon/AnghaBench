
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct txdelta_baton {TYPE_1__* checksum; int * context; scalar_t__ more; } ;
struct TYPE_2__ {unsigned char const* digest; } ;



__attribute__((used)) static const unsigned char *
txdelta_md5_digest(void *baton)
{
  struct txdelta_baton *b = baton;


  if (b->more)
    return ((void*)0);


  if (b->context == ((void*)0))
    return ((void*)0);


  return b->checksum->digest;
}
