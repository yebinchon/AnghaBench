
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbdata {int dummy; } ;
typedef int int64_t ;


 int le64toh (int ) ;
 int mb_get_int64 (struct mbdata*,int *) ;

int
mb_get_int64le(struct mbdata *mbp, int64_t *x)
{
 int64_t v;
 int error;

 error = mb_get_int64(mbp, &v);
 *x = le64toh(v);
 return error;
}
