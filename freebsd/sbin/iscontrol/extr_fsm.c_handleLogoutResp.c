
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdu_t ;
struct TYPE_3__ {int flags; int fd; } ;
typedef TYPE_1__ isess_t ;


 int ISCSISTOP ;
 int SESS_DISCONNECT ;
 int T13 ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int perror (char*) ;

__attribute__((used)) static int
handleLogoutResp(isess_t *sess, pdu_t *pp)
{
     if(sess->flags & SESS_DISCONNECT) {
   int val = 0;
   if(ioctl(sess->fd, ISCSISTOP, &val)) {
        perror("ISCSISTOP");
   }
   return 0;
     }
     return T13;
}
