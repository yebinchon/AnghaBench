
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qman_cgrs {int q; } ;


 int QM_MCR_QUERYCONGESTION (int *,int ) ;

__attribute__((used)) static __inline__ int QMAN_CGRS_GET(struct qman_cgrs *c, int num)
{
    return QM_MCR_QUERYCONGESTION(&c->q, (uint8_t)num);
}
