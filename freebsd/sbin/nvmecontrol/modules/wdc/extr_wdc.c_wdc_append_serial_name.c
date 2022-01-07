
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller_data {int sn; } ;


 int NVME_SERIAL_NUMBER_LENGTH ;
 int memcpy (char*,int ,int) ;
 int read_controller_data (int,struct nvme_controller_data*) ;
 int snprintf (char*,size_t,char*,char*,char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
wdc_append_serial_name(int fd, char *buf, size_t len, const char *suffix)
{
 struct nvme_controller_data cdata;
 char sn[NVME_SERIAL_NUMBER_LENGTH + 1];
 char *walker;

 len -= strlen(buf);
 buf += strlen(buf);
 read_controller_data(fd, &cdata);
 memcpy(sn, cdata.sn, NVME_SERIAL_NUMBER_LENGTH);
 walker = sn + NVME_SERIAL_NUMBER_LENGTH - 1;
 while (walker > sn && *walker == ' ')
  walker--;
 *++walker = '\0';
 snprintf(buf, len, "%s%s.bin", sn, suffix);
}
