
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditLine ;


 unsigned char CC_NORM ;
 int SIGTSTP ;
 int kill (int ,int ) ;

__attribute__((used)) static unsigned char
_el_rl_tstp(EditLine *el __attribute__((__unused__)), int ch __attribute__((__unused__)))
{
 (void)kill(0, SIGTSTP);
 return CC_NORM;
}
