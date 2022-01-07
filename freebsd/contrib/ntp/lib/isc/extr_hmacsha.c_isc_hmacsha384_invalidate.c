
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_hmacsha384_t ;


 int memset (int *,int ,int) ;

void
isc_hmacsha384_invalidate(isc_hmacsha384_t *ctx) {
 memset(ctx, 0, sizeof(*ctx));
}
