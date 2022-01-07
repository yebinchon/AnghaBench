
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int redirectArgs ;
 scalar_t__ systemf (char*,char const*,int ) ;

int
canRunCommand(const char *cmd)
{
  static int tested = 0, value = 0;
  if (!tested) {
    tested = 1;
    if (systemf("%s %s", cmd, redirectArgs) == 0)
      value = 1;
  }
  return (value);
}
