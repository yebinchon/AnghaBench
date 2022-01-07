
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ucma_abi_destroy_id_resp {int events_reported; } ;
struct ucma_abi_destroy_id {int id; } ;


 int CMA_INIT_CMD_RESP (struct ucma_abi_destroy_id*,int,int ,struct ucma_abi_destroy_id_resp*,int) ;
 int DESTROY_ID ;
 int ENODATA ;
 int ERR (int ) ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ucma_abi_destroy_id_resp*,int) ;
 int write (int,struct ucma_abi_destroy_id*,int) ;

__attribute__((used)) static int ucma_destroy_kern_id(int fd, uint32_t handle)
{
 struct ucma_abi_destroy_id_resp resp;
 struct ucma_abi_destroy_id cmd;
 int ret;

 CMA_INIT_CMD_RESP(&cmd, sizeof cmd, DESTROY_ID, &resp, sizeof resp);
 cmd.id = handle;

 ret = write(fd, &cmd, sizeof cmd);
 if (ret != sizeof cmd)
  return (ret >= 0) ? ERR(ENODATA) : -1;

 VALGRIND_MAKE_MEM_DEFINED(&resp, sizeof resp);

 return resp.events_reported;
}
