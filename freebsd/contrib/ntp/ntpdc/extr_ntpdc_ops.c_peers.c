
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int dopeers (struct parse*,int *,int ) ;

__attribute__((used)) static void
peers(
 struct parse *pcmd,
 FILE *fp
 )
{
 dopeers(pcmd, fp, 0);
}
