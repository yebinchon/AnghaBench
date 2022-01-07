
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CI_HASH_SIZE ;
 int _string_hash_func (char const*,int ) ;

__attribute__((used)) static __inline int
hash_func(const char *key)
{

 return (_string_hash_func(key, CI_HASH_SIZE));
}
