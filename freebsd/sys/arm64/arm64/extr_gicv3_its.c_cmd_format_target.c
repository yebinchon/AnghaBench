
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct its_cmd {int * cmd_dword; } ;


 int CMD_TARGET_MASK ;
 int htole64 (int) ;

__attribute__((used)) static __inline void
cmd_format_target(struct its_cmd *cmd, uint64_t target)
{

 cmd->cmd_dword[2] &= htole64(~CMD_TARGET_MASK);
 cmd->cmd_dword[2] |= htole64(target & CMD_TARGET_MASK);
}
