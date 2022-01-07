
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ used; int state; } ;
typedef TYPE_1__ serf_linebuf_t ;


 int SERF_LINEBUF_EMPTY ;

void serf_linebuf_init(serf_linebuf_t *linebuf)
{
    linebuf->state = SERF_LINEBUF_EMPTY;
    linebuf->used = 0;
}
