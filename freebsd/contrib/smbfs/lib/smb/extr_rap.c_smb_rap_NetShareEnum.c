
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rap {int r_entries; } ;
struct smb_ctx {int dummy; } ;


 int smb_rap_create (int ,char*,char*,struct smb_rap**) ;
 int smb_rap_done (struct smb_rap*) ;
 int smb_rap_error (struct smb_rap*,int) ;
 int smb_rap_getNparam (struct smb_rap*,long*) ;
 int smb_rap_request (struct smb_rap*,struct smb_ctx*) ;
 int smb_rap_setNparam (struct smb_rap*,int) ;
 int smb_rap_setPparam (struct smb_rap*,void*) ;

int
smb_rap_NetShareEnum(struct smb_ctx *ctx, int sLevel, void *pbBuffer,
 int cbBuffer, int *pcEntriesRead, int *pcTotalAvail)
{
 struct smb_rap *rap;
 long lval;
 int error;

 error = smb_rap_create(0, "WrLeh", "B13BWz", &rap);
 if (error)
  return error;
 smb_rap_setNparam(rap, sLevel);
 smb_rap_setPparam(rap, pbBuffer);
 smb_rap_setNparam(rap, cbBuffer);
 error = smb_rap_request(rap, ctx);
 if (error == 0) {
  *pcEntriesRead = rap->r_entries;
  error = smb_rap_getNparam(rap, &lval);
  *pcTotalAvail = lval;
 }
 error = smb_rap_error(rap, error);
 smb_rap_done(rap);
 return error;
}
