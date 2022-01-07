
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int PJDLOG_ASSERT (int) ;
 int bitstr_size (int) ;
 int powerof2 (int) ;
 size_t roundup2 (int,int) ;

size_t
activemap_calc_ondisk_size(uint64_t mediasize, uint32_t extentsize,
    uint32_t sectorsize)
{
 uint64_t nextents, mapsize;

 PJDLOG_ASSERT(mediasize > 0);
 PJDLOG_ASSERT(extentsize > 0);
 PJDLOG_ASSERT(powerof2(extentsize));
 PJDLOG_ASSERT(sectorsize > 0);
 PJDLOG_ASSERT(powerof2(sectorsize));

 nextents = ((mediasize - 1) / extentsize) + 1;
 mapsize = bitstr_size(nextents);
 return (roundup2(mapsize, sectorsize));
}
