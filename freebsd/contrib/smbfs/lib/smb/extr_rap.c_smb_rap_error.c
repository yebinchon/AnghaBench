
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rap {int r_result; } ;


 int SMB_RAP_ERROR ;

int
smb_rap_error(struct smb_rap *rap, int error)
{
 if (error)
  return error;
 if (rap->r_result == 0)
  return 0;
 return rap->r_result | SMB_RAP_ERROR;
}
