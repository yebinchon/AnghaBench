
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* signo ;

__attribute__((used)) static void handler(int s)
{

 signo[s] = 1;
}
