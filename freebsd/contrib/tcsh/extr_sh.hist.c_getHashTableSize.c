
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

__attribute__((used)) static unsigned
getHashTableSize(int hlen)
{
    unsigned target = hlen * 2;
    unsigned e = 5;
    unsigned size;
    while ((size = 1<<e) < target)
 e++;




    assert((size & (size-1)) == 0);
    return size;

}
