
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bootfd; } ;
typedef TYPE_1__ RMPCONN ;


 TYPE_1__* LastFree ;
 int close (int) ;
 int free (char*) ;

void
FreeConn(RMPCONN *rtmp)
{



 if (rtmp->bootfd >= 0) {
  (void) close(rtmp->bootfd);
  rtmp->bootfd = -1;
 }

 if (LastFree == ((void*)0))
  rtmp = LastFree;
 else
  free((char *)rtmp);
}
