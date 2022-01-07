
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_opt_t ;


 int _CASE (int ,int ) ;
 int _OPT_BOOL (void*) ;
 int _OPT_INT (void*) ;
 int _OPT_STR (void*) ;
 int authMethod ;
 int chapDigest ;
 int chapIName ;
 int chapSecret ;
 int dataDigest ;
 int dataPDUInOrder ;
 int dataSequenceInOrder ;
 int defaultTime2Retain ;
 int defaultTime2Wait ;
 int errorRecoveryLevel ;
 int firstBurstLength ;
 int headerDigest ;
 int immediateData ;
 int initialR2T ;
 int initiatorAlias ;
 int initiatorName ;
 int iqn ;
 int maxBurstLength ;
 int maxConnections ;
 int maxOutstandingR2T ;
 int maxRecvDataSegmentLength ;
 int maxXmitDataSegmentLength ;
 int maxluns ;
 int port ;
 int sockbufsize ;
 int tags ;
 int targetAddress ;
 int targetAlias ;
 int targetName ;
 int targetPortalGroupTag ;
 int tgtChapName ;
 int tgtChapSecret ;

__attribute__((used)) static void
setOption(isc_opt_t *op, int which, void *rval)
{
     switch(which) {
   _CASE(port, _OPT_INT(rval));
   _CASE(tags, _OPT_INT(rval));
   _CASE(maxluns, _OPT_INT(rval));
   _CASE(iqn, _OPT_STR(rval));
   _CASE(sockbufsize, _OPT_INT(rval));

   _CASE(maxConnections, _OPT_INT(rval));
   _CASE(maxRecvDataSegmentLength, _OPT_INT(rval));
   _CASE(maxXmitDataSegmentLength, _OPT_INT(rval));
   _CASE(maxBurstLength, _OPT_INT(rval));
   _CASE(firstBurstLength, _OPT_INT(rval));
   _CASE(defaultTime2Wait, _OPT_INT(rval));
   _CASE(defaultTime2Retain, _OPT_INT(rval));
   _CASE(maxOutstandingR2T, _OPT_INT(rval));
   _CASE(errorRecoveryLevel, _OPT_INT(rval));
   _CASE(targetPortalGroupTag, _OPT_INT(rval));
   _CASE(headerDigest, _OPT_STR(rval));
   _CASE(dataDigest, _OPT_STR(rval));

   _CASE(targetAddress, _OPT_STR(rval));
   _CASE(targetAlias, _OPT_STR(rval));
   _CASE(targetName, _OPT_STR(rval));
   _CASE(initiatorName, _OPT_STR(rval));
   _CASE(initiatorAlias, _OPT_STR(rval));
   _CASE(authMethod, _OPT_STR(rval));
   _CASE(chapSecret, _OPT_STR(rval));
   _CASE(chapIName, _OPT_STR(rval));
   _CASE(chapDigest, _OPT_STR(rval));

   _CASE(tgtChapName, _OPT_STR(rval));
   _CASE(tgtChapSecret, _OPT_STR(rval));

   _CASE(initialR2T, _OPT_BOOL(rval));
   _CASE(immediateData, _OPT_BOOL(rval));
   _CASE(dataPDUInOrder, _OPT_BOOL(rval));
   _CASE(dataSequenceInOrder, _OPT_BOOL(rval));
     }
}
