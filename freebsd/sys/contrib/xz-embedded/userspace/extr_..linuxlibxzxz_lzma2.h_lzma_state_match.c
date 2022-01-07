
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lzma_state { ____Placeholder_lzma_state } lzma_state ;


 int LIT_STATES ;
 int STATE_LIT_MATCH ;
 int STATE_NONLIT_MATCH ;

__attribute__((used)) static inline void lzma_state_match(enum lzma_state *state)
{
 *state = *state < LIT_STATES ? STATE_LIT_MATCH : STATE_NONLIT_MATCH;
}
