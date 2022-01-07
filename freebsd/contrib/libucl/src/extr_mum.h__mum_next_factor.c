
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int rand () ;

__attribute__((used)) static inline uint64_t
_mum_next_factor (void) {
  uint64_t start = 0;
  int i;

  for (i = 0; i < 8; i++)
    start = (start << 8) | rand() % 256;
  return start;
}
