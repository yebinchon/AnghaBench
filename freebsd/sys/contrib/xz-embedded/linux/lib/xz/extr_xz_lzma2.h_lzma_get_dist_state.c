
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int DIST_STATES ;
 scalar_t__ MATCH_LEN_MIN ;

__attribute__((used)) static inline uint32_t lzma_get_dist_state(uint32_t len)
{
 return len < DIST_STATES + MATCH_LEN_MIN
   ? len - MATCH_LEN_MIN : DIST_STATES - 1;
}
