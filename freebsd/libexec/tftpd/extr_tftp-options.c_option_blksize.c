
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef int maxdgram ;
struct TYPE_2__ {int o_reply; int * o_request; } ;


 int BLKSIZE_MAX ;
 int BLKSIZE_MIN ;
 int DEBUG_OPTIONS ;
 int EBADOP ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_WARNING ;
 size_t OPT_BLKSIZE ;
 scalar_t__ acting_as_client ;
 int asprintf (int*,char*,int) ;
 int atoi (int *) ;
 int debug ;
 TYPE_1__* options ;
 int pktsize ;
 int segsize ;
 int send_error (int,int ) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;
 int tftp_log (int ,char*,...) ;

int
option_blksize(int peer)
{
 u_long maxdgram;
 size_t len;

 if (options[OPT_BLKSIZE].o_request == ((void*)0))
  return (0);


 len = sizeof(maxdgram);
 if (sysctlbyname("net.inet.udp.maxdgram",
     &maxdgram, &len, ((void*)0), 0) < 0) {
  tftp_log(LOG_ERR, "sysctl: net.inet.udp.maxdgram");
  return (acting_as_client ? 1 : 0);
 }

 int size = atoi(options[OPT_BLKSIZE].o_request);
 if (size < BLKSIZE_MIN || size > BLKSIZE_MAX) {
  if (acting_as_client) {
   tftp_log(LOG_ERR,
       "Invalid blocksize (%d bytes), aborting",
       size);
   send_error(peer, EBADOP);
   return (1);
  } else {
   tftp_log(LOG_WARNING,
       "Invalid blocksize (%d bytes), ignoring request",
       size);
   return (0);
  }
 }

 if (size > (int)maxdgram) {
  if (acting_as_client) {
   tftp_log(LOG_ERR,
       "Invalid blocksize (%d bytes), "
       "net.inet.udp.maxdgram sysctl limits it to "
       "%ld bytes.\n", size, maxdgram);
   send_error(peer, EBADOP);
   return (1);
  } else {
   tftp_log(LOG_WARNING,
       "Invalid blocksize (%d bytes), "
       "net.inet.udp.maxdgram sysctl limits it to "
       "%ld bytes.\n", size, maxdgram);
   size = maxdgram;

  }
 }

 asprintf(&options[OPT_BLKSIZE].o_reply, "%d", size);
 segsize = size;
 pktsize = size + 4;
 if (debug&DEBUG_OPTIONS)
  tftp_log(LOG_DEBUG, "Setting blksize to '%s'",
      options[OPT_BLKSIZE].o_reply);

 return (0);
}
