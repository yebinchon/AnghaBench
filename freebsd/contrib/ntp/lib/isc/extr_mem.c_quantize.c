
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ALIGNMENT_SIZE ;

__attribute__((used)) static inline size_t
quantize(size_t size) {






 if (size == 0U)
  return (ALIGNMENT_SIZE);
 return ((size + ALIGNMENT_SIZE - 1) & (~(ALIGNMENT_SIZE - 1)));
}
