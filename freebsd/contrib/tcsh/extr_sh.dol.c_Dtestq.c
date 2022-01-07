
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int QUOTES ;
 scalar_t__ cmap (int ,int ) ;
 int gflag ;

__attribute__((used)) static void
Dtestq(Char c)
{

    if (cmap(c, QUOTES))
 gflag = 1;
}
