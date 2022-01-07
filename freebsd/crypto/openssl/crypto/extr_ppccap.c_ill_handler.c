
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ill_jmp ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void ill_handler(int sig)
{
    siglongjmp(ill_jmp, sig);
}
