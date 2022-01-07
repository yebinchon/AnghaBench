
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; scalar_t__ remaining; } ;
typedef TYPE_1__ serf_databuf_t ;


 int APR_SUCCESS ;

void serf_databuf_init(serf_databuf_t *databuf)
{

    databuf->remaining = 0;


    databuf->status = APR_SUCCESS;
}
