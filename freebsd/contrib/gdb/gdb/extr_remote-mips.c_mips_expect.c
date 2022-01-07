
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_expect_timeout (char const*,int ) ;
 int remote_timeout ;

__attribute__((used)) static int
mips_expect (const char *string)
{
  return mips_expect_timeout (string, remote_timeout);
}
