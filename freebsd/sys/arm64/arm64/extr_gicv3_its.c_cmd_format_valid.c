
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
struct its_cmd {int * cmd_dword; } ;


 int CMD_VALID_MASK ;
 int CMD_VALID_SHIFT ;
 int htole64 (int) ;

__attribute__((used)) static __inline void
cmd_format_valid(struct its_cmd *cmd, uint8_t valid)
{

 cmd->cmd_dword[2] &= htole64(~CMD_VALID_MASK);
 cmd->cmd_dword[2] |= htole64((uint64_t)valid << CMD_VALID_SHIFT);
}
