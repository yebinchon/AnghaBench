
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int REQ_CLR_TRAP ;
 int do_addclr_trap (struct parse*,int *,int ) ;

__attribute__((used)) static void
clrtrap(
 struct parse *pcmd,
 FILE *fp
 )
{
 do_addclr_trap(pcmd, fp, REQ_CLR_TRAP);
}
