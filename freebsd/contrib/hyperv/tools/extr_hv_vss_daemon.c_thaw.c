
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int LOG_INFO ;
 int VSS_LOG (int ,char*,...) ;
 int close (int) ;
 int errno ;
 int g_ufs_suspend_handle ;
 int strerror (int) ;

__attribute__((used)) static int
thaw(void)
{
 int error = 0;
 if (g_ufs_suspend_handle != -1) {
  error = close(g_ufs_suspend_handle);
  if (!error) {
   g_ufs_suspend_handle = -1;
   VSS_LOG(LOG_INFO, "Successfully thaw the fs\n");
  } else {
   error = errno;
   VSS_LOG(LOG_ERR, "Fail to thaw the fs: "
       "%d %s\n", errno, strerror(errno));
  }
 } else {
  VSS_LOG(LOG_INFO, "The fs has already been thawed\n");
 }

 return (error);
}
