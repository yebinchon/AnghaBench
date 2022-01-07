
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOL_SOCKET ;

__attribute__((used)) static int
linux_to_bsd_sockopt_level(int level)
{

 switch (level) {
 case 128:
  return (SOL_SOCKET);
 }
 return (level);
}
