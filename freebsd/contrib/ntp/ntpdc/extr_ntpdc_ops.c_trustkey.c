
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int REQ_TRUSTKEY ;
 int do_trustkey (struct parse*,int *,int ) ;

__attribute__((used)) static void
trustkey(
 struct parse *pcmd,
 FILE *fp
 )
{
 do_trustkey(pcmd, fp, REQ_TRUSTKEY);
}
