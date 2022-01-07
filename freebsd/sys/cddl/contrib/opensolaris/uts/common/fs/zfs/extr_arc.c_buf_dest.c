
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b_evict_lock; } ;
typedef TYPE_1__ arc_buf_t ;


 int ARC_SPACE_HDRS ;
 int arc_space_return (int,int ) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
buf_dest(void *vbuf, void *unused)
{
 arc_buf_t *buf = vbuf;

 mutex_destroy(&buf->b_evict_lock);
 arc_space_return(sizeof (arc_buf_t), ARC_SPACE_HDRS);
}
