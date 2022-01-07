
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int memcpy (int *,int *,int) ;
 int scsi_u64to8b (int ,int *) ;

void
scsi_create_timestamp(uint8_t *timestamp_6b_buf,
        uint64_t timestamp)
{
 uint8_t buf[8];
 scsi_u64to8b(timestamp, buf);





 memcpy(timestamp_6b_buf, &buf[2], 6);
}
