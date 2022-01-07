
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int node; } ;
typedef TYPE_1__ uuid_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int DIFF_RETURN (TYPE_1__ const*,TYPE_1__ const*,int ) ;
 int clock_seq_hi_and_reserved ;
 int clock_seq_low ;
 int memcmp (int ,int ,int) ;
 int time_hi_and_version ;
 int time_low ;
 int time_mid ;
 scalar_t__ uuid_is_nil (TYPE_1__ const*,int *) ;
 int uuid_s_ok ;

int32_t
uuid_compare(const uuid_t *a, const uuid_t *b, uint32_t *status)
{
 int res;

 if (status != ((void*)0))
  *status = uuid_s_ok;


 if (a == b)
  return (0);
 if (a == ((void*)0))
  return ((uuid_is_nil(b, ((void*)0))) ? 0 : -1);
 if (b == ((void*)0))
  return ((uuid_is_nil(a, ((void*)0))) ? 0 : 1);


 DIFF_RETURN(a, b, time_low);
 DIFF_RETURN(a, b, time_mid);
 DIFF_RETURN(a, b, time_hi_and_version);
 DIFF_RETURN(a, b, clock_seq_hi_and_reserved);
 DIFF_RETURN(a, b, clock_seq_low);

 res = memcmp(a->node, b->node, sizeof(a->node));
 if (res)
  return ((res < 0) ? -1 : 1);
 return (0);
}
