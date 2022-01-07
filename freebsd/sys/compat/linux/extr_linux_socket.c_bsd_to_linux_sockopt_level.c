
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_SOL_SOCKET ;


__attribute__((used)) static int
bsd_to_linux_sockopt_level(int level)
{

 switch (level) {
 case 128:
  return (LINUX_SOL_SOCKET);
 }
 return (level);
}
