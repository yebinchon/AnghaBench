
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct pt_config {int * end; int * begin; } ;


 int * align (int const*,int) ;
 scalar_t__* psb_pattern ;
 int * pt_find_psb (int const*,struct pt_config const*) ;
 int pt_sync_within_bounds (int const*,int const*,int const*) ;
 int pte_eos ;
 int pte_internal ;

int pt_sync_forward(const uint8_t **sync, const uint8_t *pos,
      const struct pt_config *config)
{
 const uint8_t *begin, *end, *start;

 if (!sync || !pos || !config)
  return -pte_internal;

 start = pos;
 begin = config->begin;
 end = config->end;

 if (!pt_sync_within_bounds(pos, begin, end))
  return -pte_internal;


 pos = align(pos, sizeof(*psb_pattern));


 for (;;) {
  const uint8_t *current = pos;
  uint64_t val;

  pos += sizeof(uint64_t);
  if (end < pos)
   return -pte_eos;

  val = * (const uint64_t *) current;

  if ((val != psb_pattern[0]) && (val != psb_pattern[1]))
   continue;


  current = pt_find_psb(pos, config);
  if (!current)
   continue;




  if (current < start)
   continue;

  *sync = current;
  return 0;
 }
}
