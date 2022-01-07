
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 size_t BREAK_0 ;
 size_t BREAK_1 ;
 size_t BREAK_2 ;
 size_t BREAK_3 ;
 size_t BREAK_4 ;
 size_t DEG_0 ;
 size_t DEG_1 ;
 size_t DEG_2 ;
 size_t DEG_3 ;
 size_t DEG_4 ;
 int MAX_TYPES ;
 int SEP_0 ;
 int SEP_1 ;
 int SEP_2 ;
 int SEP_3 ;
 int SEP_4 ;
 scalar_t__ TYPE_0 ;
 scalar_t__ TYPE_1 ;
 scalar_t__ TYPE_2 ;
 scalar_t__ TYPE_3 ;
 scalar_t__ TYPE_4 ;
 scalar_t__* end_ptr ;
 size_t rand_deg ;
 int rand_sep ;
 scalar_t__ rand_type ;
 scalar_t__* rptr ;
 int srandom (unsigned int) ;
 scalar_t__* state ;

char *
initstate(unsigned int seed, char *arg_state, size_t n)
{
 char *ostate = (char *)(&state[-1]);
 uint32_t *int_arg_state = (uint32_t *)arg_state;

 if (n < BREAK_0)
  return (((void*)0));
 if (rand_type == TYPE_0)
  state[-1] = rand_type;
 else
  state[-1] = MAX_TYPES * (rptr - state) + rand_type;
 if (n < BREAK_1) {
  rand_type = TYPE_0;
  rand_deg = DEG_0;
  rand_sep = SEP_0;
 } else if (n < BREAK_2) {
  rand_type = TYPE_1;
  rand_deg = DEG_1;
  rand_sep = SEP_1;
 } else if (n < BREAK_3) {
  rand_type = TYPE_2;
  rand_deg = DEG_2;
  rand_sep = SEP_2;
 } else if (n < BREAK_4) {
  rand_type = TYPE_3;
  rand_deg = DEG_3;
  rand_sep = SEP_3;
 } else {
  rand_type = TYPE_4;
  rand_deg = DEG_4;
  rand_sep = SEP_4;
 }
 state = int_arg_state + 1;
 end_ptr = &state[rand_deg];
 srandom(seed);
 if (rand_type == TYPE_0)
  int_arg_state[0] = rand_type;
 else
  int_arg_state[0] = MAX_TYPES * (rptr - state) + rand_type;
 return (ostate);
}
