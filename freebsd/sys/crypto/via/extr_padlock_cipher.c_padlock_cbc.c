
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union padlock_cw {int dummy; } padlock_cw ;



__attribute__((used)) static __inline void
padlock_cbc(void *in, void *out, size_t count, void *key, union padlock_cw *cw,
    void *iv)
{
}
