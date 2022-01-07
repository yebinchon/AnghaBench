
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct varlist {int dummy; } ;
typedef int data ;
typedef int associd_t ;


 int CTL_MAX_DATA_LEN ;
 int doquery (int,int ,int,size_t,char*,int *,size_t*,char const**) ;
 int makequerydata (struct varlist*,size_t*,char*) ;

__attribute__((used)) static int
doquerylist(
 struct varlist *vlist,
 int op,
 associd_t associd,
 int auth,
 u_short *rstatus,
 size_t *dsize,
 const char **datap
 )
{
 char data[CTL_MAX_DATA_LEN];
 size_t datalen;

 datalen = sizeof(data);
 makequerydata(vlist, &datalen, data);

 return doquery(op, associd, auth, datalen, data, rstatus, dsize,
         datap);
}
