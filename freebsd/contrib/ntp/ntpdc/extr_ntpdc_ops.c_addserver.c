
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int MODE_CLIENT ;
 int doconfig (struct parse*,int *,int ,int ) ;

__attribute__((used)) static void
addserver(
 struct parse *pcmd,
 FILE *fp
 )
{
 doconfig(pcmd, fp, MODE_CLIENT, 0);
}
