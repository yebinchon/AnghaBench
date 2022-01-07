
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sigcnt ;

__attribute__((used)) static void
thehand(int sig)
{

 sigcnt++;
}
