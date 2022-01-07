
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int b_evict_lock; TYPE_2__* b_hdr; int * b_data; } ;
typedef TYPE_3__ arc_buf_t ;
struct TYPE_5__ {scalar_t__ b_state; } ;
struct TYPE_6__ {TYPE_1__ b_l1hdr; } ;


 scalar_t__ arc_anon ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

int
arc_released(arc_buf_t *buf)
{
 int released;

 mutex_enter(&buf->b_evict_lock);
 released = (buf->b_data != ((void*)0) &&
     buf->b_hdr->b_l1hdr.b_state == arc_anon);
 mutex_exit(&buf->b_evict_lock);
 return (released);
}
