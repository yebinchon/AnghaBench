
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_cgrs {int dummy; } ;


 int memset (struct qman_cgrs*,int ,int) ;

__attribute__((used)) static __inline__ void QMAN_CGRS_INIT(struct qman_cgrs *c)
{
    memset(c, 0, sizeof(*c));
}
