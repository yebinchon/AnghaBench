
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int boolean_t ;


 scalar_t__ SM2_PREFIX ;
 scalar_t__ SM_DEBUG_PREFIX ;
 scalar_t__ SM_PREFIX_DECODE (int ) ;

boolean_t
sm_entry_is_single_word(uint64_t e)
{
 uint8_t prefix = SM_PREFIX_DECODE(e);
 return (prefix != SM_DEBUG_PREFIX && prefix != SM2_PREFIX);
}
