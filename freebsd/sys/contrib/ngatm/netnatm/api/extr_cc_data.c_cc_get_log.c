
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ccdata {int log; } ;



u_int
cc_get_log(const struct ccdata *cc)
{
 return (cc->log);
}
