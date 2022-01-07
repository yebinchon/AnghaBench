
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int did_sigsys ;

void
sigsys_handler(int signo)
{

 did_sigsys = 1;
}
