
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* ucl_chartable ;

__attribute__((used)) static inline bool
ucl_test_character (unsigned char c, int type_flags)
{
 return (ucl_chartable[c] & type_flags) != 0;
}
