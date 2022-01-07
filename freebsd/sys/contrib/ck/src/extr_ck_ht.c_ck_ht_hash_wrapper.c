
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ck_ht_hash {unsigned long value; } ;


 scalar_t__ MurmurHash64A (void const*,size_t,int ) ;

__attribute__((used)) static void
ck_ht_hash_wrapper(struct ck_ht_hash *h,
    const void *key,
    size_t length,
    uint64_t seed)
{

 h->value = (unsigned long)MurmurHash64A(key, length, seed);
 return;
}
