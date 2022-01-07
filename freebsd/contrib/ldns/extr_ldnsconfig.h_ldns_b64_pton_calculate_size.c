
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline size_t ldns_b64_pton_calculate_size(size_t srcsize)
{
 return (((((srcsize + 3) / 4) * 3)) + 1);
}
