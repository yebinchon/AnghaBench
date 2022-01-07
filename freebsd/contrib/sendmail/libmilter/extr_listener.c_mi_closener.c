
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; int st_mode; } ;


 int INVALID_SOCKET ;
 int L_Mutex ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 scalar_t__ ValidSocket (int ) ;
 int closesocket (int ) ;
 int free (int *) ;
 scalar_t__ fstat (int ,struct stat*) ;
 scalar_t__ geteuid () ;
 int listenfd ;
 int smutex_lock (int *) ;
 int smutex_unlock (int *) ;
 int * sockpath ;
 scalar_t__ stat (int *,struct stat*) ;
 int unlink (int *) ;

void
mi_closener()
{
 (void) smutex_lock(&L_Mutex);
 if (ValidSocket(listenfd))
 {
  (void) closesocket(listenfd);
  listenfd = INVALID_SOCKET;
 }
 (void) smutex_unlock(&L_Mutex);
}
