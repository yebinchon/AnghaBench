
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_sha384_t ;


 int memset (int *,int ,int) ;

void
isc_sha384_invalidate(isc_sha384_t *context) {
 memset(context, 0, sizeof(isc_sha384_t));
}
