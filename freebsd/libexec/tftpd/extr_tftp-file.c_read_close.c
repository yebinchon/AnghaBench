
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int errno ;
 scalar_t__ fclose (int ) ;
 int file ;
 int strerror (int ) ;
 int tftp_log (int ,char*,int ) ;

int
read_close(void)
{

 if (fclose(file) != 0) {
  tftp_log(LOG_ERR, "fclose() failed: %s", strerror(errno));
  return 1;
 }
 return 0;
}
