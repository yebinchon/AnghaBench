
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum break_type { ____Placeholder_break_type } break_type ;
typedef int CORE_ADDR ;


 int common_breakpoint (int,int ,int,int) ;

__attribute__((used)) static int
set_breakpoint (CORE_ADDR addr, int len, enum break_type type)
{
  return common_breakpoint (1, addr, len, type);
}
