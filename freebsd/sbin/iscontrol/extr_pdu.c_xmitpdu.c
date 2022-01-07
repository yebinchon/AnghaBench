
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdu_t ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ isess_t ;


 int ISCSISEND ;
 scalar_t__ ioctl (int ,int ,int *) ;
 int perror (char*) ;
 int pukeText (char*,int *) ;
 scalar_t__ vflag ;

int
xmitpdu(isess_t *sess, pdu_t *pp)
{
     if(ioctl(sess->fd, ISCSISEND, pp)) {
   perror("xmitpdu");
   return -1;
     }
     if(vflag)
   pukeText("I-", pp);

     return 0;
}
