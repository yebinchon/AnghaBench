
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atf_tc_fail (char*) ;

__attribute__((used)) static void
childfail(int sign)
{

 atf_tc_fail("child died");
}
