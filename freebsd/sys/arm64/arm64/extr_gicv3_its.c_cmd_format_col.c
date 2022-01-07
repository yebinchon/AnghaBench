
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct its_cmd {int * cmd_dword; } ;


 int CMD_COL_MASK ;
 int htole64 (int ) ;

__attribute__((used)) static __inline void
cmd_format_col(struct its_cmd *cmd, uint16_t col_id)
{

 cmd->cmd_dword[2] &= htole64(~CMD_COL_MASK);
 cmd->cmd_dword[2] |= htole64(col_id);
}
