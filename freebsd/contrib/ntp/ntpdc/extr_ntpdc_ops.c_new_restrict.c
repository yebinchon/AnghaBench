
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int REQ_RESADDFLAGS ;
 int do_restrict (struct parse*,int *,int ) ;

__attribute__((used)) static void
new_restrict(
 struct parse *pcmd,
 FILE *fp
 )
{
 do_restrict(pcmd, fp, REQ_RESADDFLAGS);
}
