
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct h6namemem {int dummy; } ;
struct TYPE_4__ {int (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ calloc (int,int) ;
 int stub1 (TYPE_1__*,char*) ;

struct h6namemem *
newh6namemem(netdissect_options *ndo)
{
 register struct h6namemem *p;
 static struct h6namemem *ptr = ((void*)0);
 static u_int num = 0;

 if (num <= 0) {
  num = 64;
  ptr = (struct h6namemem *)calloc(num, sizeof (*ptr));
  if (ptr == ((void*)0))
   (*ndo->ndo_error)(ndo, "newh6namemem: calloc");
 }
 --num;
 p = ptr++;
 return (p);
}
