
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct pt_config {int * end; int * begin; } ;


 scalar_t__* psb_pattern ;
 int * pt_find_psb (int const*,struct pt_config const*) ;
 int pt_sync_within_bounds (int const*,int const*,int const*) ;
 int pte_eos ;
 int pte_internal ;
 int * truncate (int const*,int) ;

int pt_sync_backward(const uint8_t **sync, const uint8_t *pos,
      const struct pt_config *config)
{
 const uint8_t *begin, *end;

 if (!sync || !pos || !config)
  return -pte_internal;

 begin = config->begin;
 end = config->end;

 if (!pt_sync_within_bounds(pos, begin, end))
  return -pte_internal;


 pos = truncate(pos, sizeof(*psb_pattern));


 for (;;) {
  const uint8_t *next = pos;
  uint64_t val;

  pos -= sizeof(uint64_t);
  if (pos < begin)
   return -pte_eos;

  val = * (const uint64_t *) pos;

  if ((val != psb_pattern[0]) && (val != psb_pattern[1]))
   continue;


  next = pt_find_psb(next, config);
  if (!next)
   continue;

  *sync = next;
  return 0;
 }
}
