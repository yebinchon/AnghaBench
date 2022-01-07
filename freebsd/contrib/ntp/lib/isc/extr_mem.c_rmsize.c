
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGNMENT_SIZE ;

__attribute__((used)) static inline size_t
rmsize(size_t size) {



 return (size & (~(ALIGNMENT_SIZE - 1)));
}
