
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int REQ_REQUEST_KEY ;
 int do_changekey (struct parse*,int *,int ) ;

__attribute__((used)) static void
requestkey(
 struct parse *pcmd,
 FILE *fp
 )
{
 do_changekey(pcmd, fp, REQ_REQUEST_KEY);
}
