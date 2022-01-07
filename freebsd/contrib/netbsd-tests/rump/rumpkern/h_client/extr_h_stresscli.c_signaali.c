
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int doquit ;

__attribute__((used)) static void
signaali(int sig)
{

 doquit = 1;
}
