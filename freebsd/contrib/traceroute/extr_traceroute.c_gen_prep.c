
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct outdata {scalar_t__ seq; } ;


 int htons (scalar_t__) ;
 scalar_t__ ident ;
 scalar_t__ outp ;
 scalar_t__ port ;

void
gen_prep(struct outdata *outdata)
{
 u_int16_t *const ptr = (u_int16_t *) outp;

 ptr[0] = htons(ident);
 ptr[1] = htons(port + outdata->seq);
}
