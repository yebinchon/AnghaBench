
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditLine ;


 scalar_t__ rl_complete (int ,int) ;

__attribute__((used)) static unsigned char
_el_rl_complete(EditLine *el __attribute__((__unused__)), int ch)
{
 return (unsigned char)rl_complete(0, ch);
}
