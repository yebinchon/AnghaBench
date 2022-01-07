
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct its_cmd {int * cmd_dword; } ;


 int CMD_ID_MASK ;
 int htole64 (int ) ;

__attribute__((used)) static __inline void
cmd_format_id(struct its_cmd *cmd, uint32_t id)
{

 cmd->cmd_dword[1] &= htole64(~CMD_ID_MASK);
 cmd->cmd_dword[1] |= htole64(id);
}
