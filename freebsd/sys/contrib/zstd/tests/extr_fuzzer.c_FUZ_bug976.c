
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZSTD_CHAINLOG_MAX ;
 int ZSTD_HASHLOG_MAX ;
 int assert (int) ;

void FUZ_bug976(void)
{
    assert(ZSTD_HASHLOG_MAX < 31);
    assert(ZSTD_CHAINLOG_MAX < 31);
}
