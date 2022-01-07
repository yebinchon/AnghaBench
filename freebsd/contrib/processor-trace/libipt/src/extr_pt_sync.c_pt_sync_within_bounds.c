
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int pt_sync_within_bounds(const uint8_t *pos, const uint8_t *begin,
     const uint8_t *end)
{




 return (begin <= pos) && (pos <= end);
}
