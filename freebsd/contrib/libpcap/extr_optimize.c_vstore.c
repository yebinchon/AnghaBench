
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmt {int code; } ;


 int NOP ;
 int VAL_UNKNOWN ;

__attribute__((used)) static inline void
vstore(struct stmt *s, int *valp, int newval, int alter)
{
 if (alter && newval != VAL_UNKNOWN && *valp == newval)
  s->code = NOP;
 else
  *valp = newval;
}
