
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc_buf_t ;


 int FTAG ;
 int arc_buf_destroy (int *,int ) ;
 int arc_return_buf (int *,int ) ;

void
dmu_return_arcbuf(arc_buf_t *buf)
{
 arc_return_buf(buf, FTAG);
 arc_buf_destroy(buf, FTAG);
}
