
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {int dummy; } ;


 int PCPU_SET (int ,int *) ;
 int curthread ;
 int pcpu_init (int ,int ,int) ;
 int pcpup ;
 int set_curthread (int *) ;
 int thread0 ;

void
pcpu0_init(void)
{



 pcpu_init(pcpup, 0, sizeof(struct pcpu));
 PCPU_SET(curthread, &thread0);
}
