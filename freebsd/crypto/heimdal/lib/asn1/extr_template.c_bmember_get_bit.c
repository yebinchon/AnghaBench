
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
bmember_get_bit(const unsigned char *p, void *data,
  unsigned int bit, size_t size)
{
    unsigned int localbit = bit % 8;
    if ((*p >> (7 - localbit)) & 1) {



 *(unsigned int *)data |= (1 << bit);

    }
}
