
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int db_capture_inprogress ;
typedef int db_capture_bufoff ;


 int EX_OSERR ;
 int SYSCTL_DDB_CAPTURE_BUFOFF ;
 int SYSCTL_DDB_CAPTURE_BUFSIZE ;
 int SYSCTL_DDB_CAPTURE_INPROGRESS ;
 int err (int ,char*,int ) ;
 int printf (char*,...) ;
 scalar_t__ sysctlbyname (int ,int*,size_t*,int *,int ) ;

__attribute__((used)) static void
ddb_capture_status_sysctl(void)
{
 u_int db_capture_bufoff, db_capture_bufsize, db_capture_inprogress;
 size_t len;

 len = sizeof(db_capture_bufoff);
 if (sysctlbyname(SYSCTL_DDB_CAPTURE_BUFOFF, &db_capture_bufoff, &len,
     ((void*)0), 0) < 0)
  err(EX_OSERR, "sysctl: %s", SYSCTL_DDB_CAPTURE_BUFOFF);
 len = sizeof(db_capture_bufoff);
 if (sysctlbyname(SYSCTL_DDB_CAPTURE_BUFSIZE, &db_capture_bufsize,
     &len, ((void*)0), 0) < 0)
  err(EX_OSERR, "sysctl: %s", SYSCTL_DDB_CAPTURE_BUFSIZE);
 len = sizeof(db_capture_inprogress);
 if (sysctlbyname(SYSCTL_DDB_CAPTURE_INPROGRESS,
     &db_capture_inprogress, &len, ((void*)0), 0) < 0)
  err(EX_OSERR, "sysctl: %s", SYSCTL_DDB_CAPTURE_INPROGRESS);
 printf("%u/%u bytes used\n", db_capture_bufoff, db_capture_bufsize);
 if (db_capture_inprogress)
  printf("capture is on\n");
 else
  printf("capture is off\n");
}
