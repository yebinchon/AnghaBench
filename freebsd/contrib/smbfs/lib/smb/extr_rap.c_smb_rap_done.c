
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rap {struct smb_rap* r_sdata; struct smb_rap* r_sparam; } ;


 int free (struct smb_rap*) ;

void
smb_rap_done(struct smb_rap *rap)
{
 if (rap->r_sparam)
  free(rap->r_sparam);
 if (rap->r_sdata)
  free(rap->r_sdata);
 free(rap);
}
