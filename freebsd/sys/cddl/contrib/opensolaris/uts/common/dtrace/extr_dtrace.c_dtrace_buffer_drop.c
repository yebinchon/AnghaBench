
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtb_drops; } ;
typedef TYPE_1__ dtrace_buffer_t ;



__attribute__((used)) static void
dtrace_buffer_drop(dtrace_buffer_t *buf)
{
 buf->dtb_drops++;
}
