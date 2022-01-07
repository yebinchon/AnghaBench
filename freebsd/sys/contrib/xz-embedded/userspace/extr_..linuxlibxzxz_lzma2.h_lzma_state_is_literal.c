
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lzma_state { ____Placeholder_lzma_state } lzma_state ;


 int LIT_STATES ;

__attribute__((used)) static inline bool lzma_state_is_literal(enum lzma_state state)
{
 return state < LIT_STATES;
}
