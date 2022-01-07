
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_md5_t ;


 int memset (int *,int ,int) ;

void
isc_md5_invalidate(isc_md5_t *ctx) {
 memset(ctx, 0, sizeof(isc_md5_t));
}
