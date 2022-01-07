
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int longjmp (int ,int) ;
 int sl_jmp ;

__attribute__((used)) static void sl_sigint(int sig)
{
    longjmp(sl_jmp, 1);
}
