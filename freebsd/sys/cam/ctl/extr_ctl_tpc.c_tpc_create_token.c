
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_vpd_id_descriptor {int length; } ;
struct scsi_token {int* length; int * body; int type; } ;
struct scsi_read_capacity_data_long {int prot_lbppbe; int* lalba_lbp; int length; } ;
struct TYPE_6__ {int block_length; } ;
struct scsi_ec_cscd_id {TYPE_2__ dtsp; int codeset; int luidt_pdt; int type_code; } ;
struct ctl_port {TYPE_4__* target_devid; } ;
struct ctl_lun {TYPE_3__* be_lun; TYPE_1__* lun_devid; } ;
typedef int off_t ;
struct TYPE_8__ {int len; struct scsi_vpd_id_descriptor* data; } ;
struct TYPE_7__ {int pblockexp; int pblockoff; int flags; int blocksize; } ;
struct TYPE_5__ {int len; scalar_t__ data; } ;


 int CTL_LUN_FLAG_UNMAP ;
 int EC_CSCD_ID ;
 int ROD_TYPE_AUR ;
 int SRC16_LALBA_A ;
 int SRC16_LBPME ;
 int SRC16_LBPPBE ;
 int SRC16_LBPRZ ;
 int T_DIRECT ;
 int arc4rand (int *,int,int ) ;
 int atomic_fetchadd_int (int*,int) ;
 int memcpy (int *,struct scsi_vpd_id_descriptor*,int) ;
 int scsi_devid_is_lun_eui64 ;
 int scsi_devid_is_lun_naa ;
 struct scsi_vpd_id_descriptor* scsi_get_devid_desc (struct scsi_vpd_id_descriptor*,int ,int ) ;
 int scsi_u64to8b (int ,int *) ;
 int scsi_ulto2b (int,int*) ;
 int scsi_ulto3b (int ,int ) ;
 int scsi_ulto4b (int ,int ) ;

__attribute__((used)) static void
tpc_create_token(struct ctl_lun *lun, struct ctl_port *port, off_t len,
    struct scsi_token *token)
{
 static int id = 0;
 struct scsi_vpd_id_descriptor *idd = ((void*)0);
 struct scsi_ec_cscd_id *cscd;
 struct scsi_read_capacity_data_long *dtsd;
 int targid_len;

 scsi_ulto4b(ROD_TYPE_AUR, token->type);
 scsi_ulto2b(0x01f8, token->length);
 scsi_u64to8b(atomic_fetchadd_int(&id, 1), &token->body[0]);
 if (lun->lun_devid)
  idd = scsi_get_devid_desc((struct scsi_vpd_id_descriptor *)
      lun->lun_devid->data, lun->lun_devid->len,
      scsi_devid_is_lun_naa);
 if (idd == ((void*)0) && lun->lun_devid)
  idd = scsi_get_devid_desc((struct scsi_vpd_id_descriptor *)
      lun->lun_devid->data, lun->lun_devid->len,
      scsi_devid_is_lun_eui64);
 if (idd != ((void*)0)) {
  cscd = (struct scsi_ec_cscd_id *)&token->body[8];
  cscd->type_code = EC_CSCD_ID;
  cscd->luidt_pdt = T_DIRECT;
  memcpy(&cscd->codeset, idd, 4 + idd->length);
  scsi_ulto3b(lun->be_lun->blocksize, cscd->dtsp.block_length);
 }
 scsi_u64to8b(0, &token->body[40]);
 scsi_u64to8b(len, &token->body[48]);


 dtsd = (struct scsi_read_capacity_data_long *)&token->body[88 - 8];
 scsi_ulto4b(lun->be_lun->blocksize, dtsd->length);
 dtsd->prot_lbppbe = lun->be_lun->pblockexp & SRC16_LBPPBE;
 scsi_ulto2b(lun->be_lun->pblockoff & SRC16_LALBA_A, dtsd->lalba_lbp);
 if (lun->be_lun->flags & CTL_LUN_FLAG_UNMAP)
  dtsd->lalba_lbp[0] |= SRC16_LBPME | SRC16_LBPRZ;

 if (port->target_devid) {
  targid_len = port->target_devid->len;
  memcpy(&token->body[120], port->target_devid->data, targid_len);
 } else
  targid_len = 32;
 arc4rand(&token->body[120 + targid_len], 384 - targid_len, 0);
}
