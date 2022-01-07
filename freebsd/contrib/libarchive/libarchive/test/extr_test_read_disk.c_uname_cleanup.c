
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertEqualInt (int,int) ;

__attribute__((used)) static void
uname_cleanup(void *d)
{
 int *mp = d;
 assertEqualInt(*mp, 0x1234);
 *mp = 0x2345;
}
