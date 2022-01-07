
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char const* md5_digest; } ;
typedef TYPE_1__ delta_read_baton_t ;



__attribute__((used)) static const unsigned char *
delta_read_md5_digest(void *baton)
{
  delta_read_baton_t *drb = baton;
  return drb->md5_digest;
}
