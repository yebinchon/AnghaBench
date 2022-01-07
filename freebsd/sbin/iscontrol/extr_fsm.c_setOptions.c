
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fd; TYPE_1__* op; } ;
typedef TYPE_2__ isess_t ;
struct TYPE_9__ {scalar_t__ targetName; int * dataDigest; int * headerDigest; int maxluns; int maxBurstLength; int maxXmitDataSegmentLength; int maxRecvDataSegmentLength; int targetAddress; int initiatorName; } ;
typedef TYPE_3__ isc_opt_t ;
struct TYPE_7__ {scalar_t__ targetName; int * dataDigest; int * headerDigest; int maxluns; int maxBurstLength; int maxXmitDataSegmentLength; int maxRecvDataSegmentLength; int targetAddress; int initiatorName; } ;


 int ISCSISETOPT ;
 int SESS_FULLFEATURE ;
 int bzero (TYPE_3__*,int) ;
 int debug (int,char*,int *) ;
 int debug_called (int) ;
 scalar_t__ ioctl (int ,int ,TYPE_3__*) ;
 int perror (char*) ;
 char* strchr (int *,char) ;

int
setOptions(isess_t *sess, int flag)
{
     isc_opt_t oop;
     char *sep;

     debug_called(3);

     bzero(&oop, sizeof(isc_opt_t));

     if((flag & SESS_FULLFEATURE) == 0) {
   oop.initiatorName = sess->op->initiatorName;
   oop.targetAddress = sess->op->targetAddress;
   if(sess->op->targetName != 0)
        oop.targetName = sess->op->targetName;

   oop.maxRecvDataSegmentLength = sess->op->maxRecvDataSegmentLength;
   oop.maxXmitDataSegmentLength = sess->op->maxXmitDataSegmentLength;
   oop.maxBurstLength = sess->op->maxBurstLength;
   oop.maxluns = sess->op->maxluns;
     }
     else {



   if(sess->op->headerDigest != ((void*)0)) {
        sep = strchr(sess->op->headerDigest, ',');
        if(sep == ((void*)0))
      oop.headerDigest = sess->op->headerDigest;
        debug(1, "oop.headerDigest=%s", oop.headerDigest);
   }
   if(sess->op->dataDigest != ((void*)0)) {
        sep = strchr(sess->op->dataDigest, ',');
        if(sep == ((void*)0))
      oop.dataDigest = sess->op->dataDigest;
        debug(1, "oop.dataDigest=%s", oop.dataDigest);
   }
     }

     if(ioctl(sess->fd, ISCSISETOPT, &oop)) {
   perror("ISCSISETOPT");
   return -1;
     }
     return 0;
}
