
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct initiator_state {int dummy; } ;


 size_t MAX_INITIATORS ;
 struct initiator_state* istates ;
 int warnx (char*,size_t,size_t) ;

__attribute__((used)) static struct initiator_state *
tcmd_get_istate(u_int init_id)
{
 if (init_id >= MAX_INITIATORS) {
  warnx("illegal init_id %d, max %d", init_id, MAX_INITIATORS - 1);
  return (((void*)0));
 } else {
  return (&istates[init_id]);
 }
}
