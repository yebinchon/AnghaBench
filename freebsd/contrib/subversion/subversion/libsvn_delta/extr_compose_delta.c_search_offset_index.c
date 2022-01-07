
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* offs; size_t length; } ;
typedef TYPE_1__ offset_index_t ;
typedef scalar_t__ apr_size_t ;


 int assert (int) ;

__attribute__((used)) static apr_size_t
search_offset_index(const offset_index_t *ndx,
                    apr_size_t offset,
                    apr_size_t hint)
{
  apr_size_t lo, hi, op;

  assert(offset < ndx->offs[ndx->length]);

  lo = 0;
  hi = ndx->length;






  if (hint < hi)
    {
      if (offset < ndx->offs[hint])
        hi = hint;
      else if (offset < ndx->offs[hint+1])
        return hint;
      else
        lo = hint+1;
    }



  for (op = (lo + hi)/2; lo != hi; op = (lo + hi)/2)
    {
      if (offset < ndx->offs[op])
        hi = op;
      else
        lo = ++op;
    }

  --lo;
  assert(ndx->offs[lo] <= offset && offset < ndx->offs[lo + 1]);
  return lo;
}
