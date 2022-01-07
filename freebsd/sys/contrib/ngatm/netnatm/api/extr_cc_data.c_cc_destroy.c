
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdata {int dummy; } ;


 int CCFREE (struct ccdata*) ;
 int cc_reset (struct ccdata*) ;

void
cc_destroy(struct ccdata *cc)
{

 cc_reset(cc);
 CCFREE(cc);
}
