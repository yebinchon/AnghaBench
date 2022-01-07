
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;


 int cityhash4 (uintptr_t,int ,int ,int ) ;

__attribute__((used)) static uint64_t
dbuf_hash(void *os, uint64_t obj, uint8_t lvl, uint64_t blkid)
{
 return (cityhash4((uintptr_t)os, obj, (uint64_t)lvl, blkid));
}
