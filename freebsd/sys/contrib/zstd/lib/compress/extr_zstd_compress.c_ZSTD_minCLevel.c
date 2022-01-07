
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ZSTD_TARGETLENGTH_MAX ;

int ZSTD_minCLevel(void) { return (int)-ZSTD_TARGETLENGTH_MAX; }
