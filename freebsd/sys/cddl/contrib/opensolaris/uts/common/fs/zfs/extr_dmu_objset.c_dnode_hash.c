
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;


 int ASSERT (int) ;
 int ZFS_CRC64_POLY ;
 int* zfs_crc64_table ;

__attribute__((used)) static uint64_t
dnode_hash(const objset_t *os, uint64_t obj)
{
 uintptr_t osv = (uintptr_t)os;
 uint64_t crc = -1ULL;

 ASSERT(zfs_crc64_table[128] == ZFS_CRC64_POLY);




 crc = (crc >> 8) ^ zfs_crc64_table[(crc ^ (osv >> 6)) & 0xFF];
 crc = (crc >> 8) ^ zfs_crc64_table[(crc ^ (obj >> 0)) & 0xFF];
 crc = (crc >> 8) ^ zfs_crc64_table[(crc ^ (obj >> 8)) & 0xFF];
 crc = (crc >> 8) ^ zfs_crc64_table[(crc ^ (obj >> 16)) & 0xFF];

 crc ^= (osv>>14) ^ (obj>>24);

 return (crc);
}
