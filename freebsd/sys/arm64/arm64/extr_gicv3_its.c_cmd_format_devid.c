
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct its_cmd {int * cmd_dword; } ;


 int CMD_DEVID_MASK ;
 int CMD_DEVID_SHIFT ;
 int htole64 (int) ;

__attribute__((used)) static __inline void
cmd_format_devid(struct its_cmd *cmd, uint32_t devid)
{

 cmd->cmd_dword[0] &= htole64(~CMD_DEVID_MASK);
 cmd->cmd_dword[0] |= htole64((uint64_t)devid << CMD_DEVID_SHIFT);
}
