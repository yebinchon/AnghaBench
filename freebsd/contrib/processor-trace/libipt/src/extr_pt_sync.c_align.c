
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int const* truncate (int const*,size_t) ;

__attribute__((used)) static const uint8_t *align(const uint8_t *pointer, size_t alignment)
{
 return truncate(pointer + alignment - 1, alignment);
}
