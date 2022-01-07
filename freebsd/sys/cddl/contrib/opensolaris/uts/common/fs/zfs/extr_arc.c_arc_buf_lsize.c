
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int b_hdr; } ;
typedef TYPE_1__ arc_buf_t ;


 int HDR_GET_LSIZE (int ) ;

int32_t
arc_buf_lsize(arc_buf_t *buf)
{
 return (HDR_GET_LSIZE(buf->b_hdr));
}
