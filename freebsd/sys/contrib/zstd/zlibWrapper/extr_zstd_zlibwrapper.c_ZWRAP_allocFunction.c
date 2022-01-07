
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
typedef int uInt ;
struct TYPE_2__ {int opaque; void* (* zalloc ) (int ,int,int ) ;} ;


 void* stub1 (int ,int,int ) ;

__attribute__((used)) static void* ZWRAP_allocFunction(void* opaque, size_t size)
{
    z_streamp strm = (z_streamp) opaque;
    void* address = strm->zalloc(strm->opaque, 1, (uInt)size);

    return address;
}
