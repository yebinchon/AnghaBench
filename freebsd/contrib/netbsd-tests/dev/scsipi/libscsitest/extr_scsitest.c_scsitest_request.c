
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsipi_xfer {int xs_control; struct scsipi_toc_header* data; struct scsipi_generic* cmd; } ;
struct scsipi_toc_header {int revision; int product; int vendor; int dev_qual2; int device; } ;
struct scsipi_start_stop {int how; } ;
struct scsipi_read_trackinfo_data {int track_size; } ;
struct scsipi_read_discinfo_data {int revision; int product; int vendor; int dev_qual2; int device; } ;
struct scsipi_read_cd_cap_data {int addr; int length; } ;
struct scsipi_inquiry_data {int revision; int product; int vendor; int dev_qual2; int device; } ;
struct scsipi_get_conf_data {int dummy; } ;
struct scsipi_generic {int opcode; } ;
struct scsipi_channel {int dummy; } ;
struct scsi_rw_6 {int length; int addr; } ;
typedef scalar_t__ scsipi_adapter_req_t ;


 scalar_t__ ADAPTER_REQ_RUN_XFER ;
 int CDBLOCKSIZE ;






 size_t RUMP_SCSITEST_NOISYSYNC ;




 int SID_REMOVABLE ;
 int SSS_LOEJ ;

 int T_CDROM ;
 int XS_CTL_SILENT ;
 int _3btol (int ) ;
 int _lto4b (int,int ) ;
 int atomic_inc_uint (int *) ;
 int isofd ;
 int memset (struct scsipi_toc_header*,int ,int) ;
 int mycdsize ;
 int printf (char*,int,...) ;
 int * rump_scsitest_err ;
 int rumpuser_close (int,int*) ;
 int rumpuser_pread (int,struct scsipi_toc_header*,int,int,int*) ;
 int scsipi_done (struct scsipi_xfer*) ;
 int sense_notready (struct scsipi_xfer*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
scsitest_request(struct scsipi_channel *chan,
 scsipi_adapter_req_t req, void *arg)
{
 struct scsipi_xfer *xs = arg;
 struct scsipi_generic *cmd = xs->cmd;




 if (req != ADAPTER_REQ_RUN_XFER)
  return;



 switch (cmd->opcode) {
 case 129:
  if (isofd == -1)
   sense_notready(xs);

  break;
 case 137: {
  struct scsipi_inquiry_data *inqbuf = (void *)xs->data;

  memset(inqbuf, 0, sizeof(*inqbuf));
  inqbuf->device = T_CDROM;
  inqbuf->dev_qual2 = SID_REMOVABLE;
  strcpy(inqbuf->vendor, "RUMPHOBO");
  strcpy(inqbuf->product, "It's a LIE");
  strcpy(inqbuf->revision, "0.00");
  break;
 }
 case 136: {
  struct scsipi_read_cd_cap_data *ret = (void *)xs->data;

  _lto4b(CDBLOCKSIZE, ret->length);
  _lto4b(mycdsize, ret->addr);

  break;
 }
 case 135: {
  struct scsipi_read_discinfo_data *ret = (void *)xs->data;

  memset(ret, 0, sizeof(*ret));
  break;
 }
 case 133: {
  struct scsipi_read_trackinfo_data *ret = (void *)xs->data;

  _lto4b(mycdsize, ret->track_size);
  break;
 }
 case 134: {
  struct scsipi_toc_header *ret = (void *)xs->data;

  memset(ret, 0, sizeof(*ret));
  break;
 }
 case 128: {
  struct scsipi_start_stop *param = (void *)cmd;

  if (param->how & SSS_LOEJ) {



   isofd = -1;
  }
  break;
 }
 case 130: {
  if (isofd == -1) {
   if ((xs->xs_control & XS_CTL_SILENT) == 0)
    atomic_inc_uint(&rump_scsitest_err
        [RUMP_SCSITEST_NOISYSYNC]);

   sense_notready(xs);
  }

  break;
 }
 case 138: {
  memset(xs->data, 0, sizeof(struct scsipi_get_conf_data));
  break;
 }
 case 131: {
  break;
 }
 case 132:

  break;
 default:
  printf("unhandled opcode 0x%x\n", cmd->opcode);
  break;
 }

 scsipi_done(xs);
}
