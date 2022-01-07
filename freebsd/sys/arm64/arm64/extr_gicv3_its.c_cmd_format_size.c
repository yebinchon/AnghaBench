
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct its_cmd {int * cmd_dword; } ;


 int CMD_SIZE_MASK ;
 int htole64 (int) ;

__attribute__((used)) static __inline void
cmd_format_size(struct its_cmd *cmd, uint16_t size)
{

 cmd->cmd_dword[1] &= htole64(~CMD_SIZE_MASK);
 cmd->cmd_dword[1] |= htole64((size & CMD_SIZE_MASK));
}
