
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetcherr {char* string; int cat; } ;


 int MAXERRSTRING ;
 int fetchLastErrCode ;
 int fetchLastErrString ;
 struct fetcherr* fetch_finderr (struct fetcherr*,int) ;
 int snprintf (int ,int ,char*,char*) ;

void
fetch_seterr(struct fetcherr *p, int e)
{
 p = fetch_finderr(p, e);
 fetchLastErrCode = p->cat;
 snprintf(fetchLastErrString, MAXERRSTRING, "%s", p->string);
}
