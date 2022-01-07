
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc_buf_t ;


 int B_FALSE ;
 int arc_buf_fill (int *,int ) ;

int
arc_decompress(arc_buf_t *buf)
{
 return (arc_buf_fill(buf, B_FALSE));
}
