
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct its_cmd {int * cmd_dword; } ;


 int CMD_COMMAND_MASK ;
 int htole64 (int ) ;

__attribute__((used)) static __inline void
cmd_format_command(struct its_cmd *cmd, uint8_t cmd_type)
{

 cmd->cmd_dword[0] &= htole64(~CMD_COMMAND_MASK);
 cmd->cmd_dword[0] |= htole64(cmd_type);
}
