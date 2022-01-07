
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ref_chunk ;
 scalar_t__ ref_count ;

void
stabsread_clear_cache (void)
{
  ref_count = 0;
  ref_chunk = 0;
}
