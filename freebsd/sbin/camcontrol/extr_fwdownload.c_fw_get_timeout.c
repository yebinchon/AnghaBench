
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct scsi_write_buffer {int dummy; } ;
struct scsi_report_supported_opcodes_timeout {int recommended_time; } ;
struct scsi_report_supported_opcodes_one {int support; int cdb_length; } ;
struct fw_vendor {scalar_t__ timeout_type; int timeout_ms; } ;
struct cam_device {int dummy; } ;


 scalar_t__ FW_TIMEOUT_DEV_REPORTED ;
 scalar_t__ FW_TIMEOUT_NO_PROBE ;
 scalar_t__ FW_TIMEOUT_USER_SPEC ;
 int RSO_ONE_SUP_MASK ;
 int RSO_ONE_SUP_NOT_SUP ;
 int WRITE_BUFFER ;
 int scsi_2btoul (int ) ;
 int scsi_4btoul (int ) ;
 int scsigetopcodes (struct cam_device*,int,int ,int,int ,int ,int,int,int,int,int ,int*,int **) ;

__attribute__((used)) static int
fw_get_timeout(struct cam_device *cam_dev, struct fw_vendor *vp,
        int task_attr, int retry_count, int timeout)
{
 struct scsi_report_supported_opcodes_one *one;
 struct scsi_report_supported_opcodes_timeout *td;
 uint8_t *buf = ((void*)0);
 uint32_t fill_len = 0, cdb_len = 0, rec_timeout = 0;
 int retval = 0;





 if (timeout != 0) {
  vp->timeout_type = FW_TIMEOUT_USER_SPEC;
  vp->timeout_ms = timeout;
  goto bailout;
 }





 if (vp->timeout_type == FW_TIMEOUT_NO_PROBE)
  goto bailout;

 retval = scsigetopcodes( cam_dev,
                   1,
               WRITE_BUFFER,
                       1,
               0,
                       0,
                     1,
                  task_attr,
                    retry_count,
                10000,
                0,
                 &fill_len,
                 &buf);




 if (retval != 0) {
  retval = 0;
  goto bailout;
 }
 if (fill_len < (sizeof(*one) + sizeof(struct scsi_write_buffer) +
     sizeof(*td)))
  goto bailout;

 one = (struct scsi_report_supported_opcodes_one *)buf;






 if ((one->support & RSO_ONE_SUP_MASK) == RSO_ONE_SUP_NOT_SUP)
  goto bailout;

 cdb_len = scsi_2btoul(one->cdb_length);
 td = (struct scsi_report_supported_opcodes_timeout *)
     &buf[sizeof(*one) + cdb_len];

 rec_timeout = scsi_4btoul(td->recommended_time);




 if (rec_timeout == 0)
  goto bailout;


 rec_timeout *= 1000;

 vp->timeout_ms = rec_timeout;
 vp->timeout_type = FW_TIMEOUT_DEV_REPORTED;

bailout:
 return (retval);
}
