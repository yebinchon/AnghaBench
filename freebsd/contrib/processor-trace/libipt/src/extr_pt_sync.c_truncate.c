
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static const uint8_t *truncate(const uint8_t *pointer, size_t alignment)
{
 uintptr_t raw = (uintptr_t) pointer;

 raw /= alignment;
 raw *= alignment;

 return (const uint8_t *) raw;
}
