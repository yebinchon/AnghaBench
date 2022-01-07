
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int associd_t ;


 int FALSE ;
 int doqueryex (int,int ,int,size_t,char const*,int *,size_t*,char const**,int ) ;

int
doquery(
 int opcode,
 associd_t associd,
 int auth,
 size_t qsize,
 const char *qdata,
 u_short *rstatus,
 size_t *rsize,
 const char **rdata
 )
{
 return doqueryex(opcode, associd, auth, qsize, qdata, rstatus,
    rsize, rdata, FALSE);
}
