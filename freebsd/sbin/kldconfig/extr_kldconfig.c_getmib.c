
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,int ) ;
 int mib ;
 scalar_t__ miblen ;
 scalar_t__ nitems (int ) ;
 int pathctl ;
 scalar_t__ sysctlnametomib (int ,int ,scalar_t__*) ;

__attribute__((used)) static void
getmib(void)
{


 if (miblen != 0)
  return;

 miblen = nitems(mib);
 if (sysctlnametomib(pathctl, mib, &miblen) != 0)
  err(1, "sysctlnametomib(%s)", pathctl);
}
