
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int count ;

__attribute__((used)) static void
handler_stress(int signo)
{
 count++;
}
