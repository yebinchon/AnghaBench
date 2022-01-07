
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int MSG_SIMPLE_Q_TAG ;
 int SCSI_MAX_CDBLEN ;
 int SSD_FULL_SIZE ;
 int bzero (struct ccb_scsiio*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int,int *,int ,int ,int *,int ,int ,size_t,int) ;
 int do_encode (int ,int ,size_t*,int (*) (void*,char*),void*,char const*,int *) ;

int
csio_build_visit(struct ccb_scsiio *csio, u_int8_t *data_ptr,
   u_int32_t dxfer_len, u_int32_t flags, int retry_count,
   int timeout, const char *cmd_spec,
   int (*arg_get)(void *hook, char *field_name), void *gethook)
{
 size_t cmdlen;
 int retval;

 if (csio == ((void*)0))
  return (0);





 if (arg_get == ((void*)0))
  return (-1);

 bzero(csio, sizeof(struct ccb_scsiio));

 if ((retval = do_encode(csio->cdb_io.cdb_bytes, SCSI_MAX_CDBLEN,
    &cmdlen, arg_get, gethook, cmd_spec, ((void*)0))) == -1)
  return (retval);

 cam_fill_csio(csio,
                      retry_count,
                     ((void*)0),
                    flags,
                         MSG_SIMPLE_Q_TAG,
                       data_ptr,
                        dxfer_len,
                        SSD_FULL_SIZE,
                      cmdlen,
                      timeout ? timeout : 5000);

 return (retval);
}
