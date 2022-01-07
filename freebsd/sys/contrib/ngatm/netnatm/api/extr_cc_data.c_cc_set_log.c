
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ccdata {int log; } ;



void
cc_set_log(struct ccdata *cc, u_int flags)
{
 cc->log = flags;
}
