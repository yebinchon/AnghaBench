
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ gss_iov_buffer_desc ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_IOV_BUFFER_TYPE (int ) ;

gss_iov_buffer_desc *
_gk_find_buffer(gss_iov_buffer_desc *iov, int iov_count, OM_uint32 type)
{
    int i;

    for (i = 0; i < iov_count; i++)
 if (type == GSS_IOV_BUFFER_TYPE(iov[i].type))
     return &iov[i];
    return ((void*)0);
}
