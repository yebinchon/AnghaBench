
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int o_reply; int * o_request; } ;


 int DEBUG_OPTIONS ;
 int EBADOP ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_WARNING ;
 size_t OPT_TIMEOUT ;
 int TIMEOUT_MAX ;
 int TIMEOUT_MIN ;
 scalar_t__ acting_as_client ;
 int atoi (int *) ;
 int debug ;
 int exit (int) ;
 int maxtimeouts ;
 TYPE_1__* options ;
 int send_error (int,int ) ;
 int settimeouts (int,int ,int ) ;
 int strdup (int *) ;
 int tftp_log (int ,char*,int,...) ;
 int timeoutnetwork ;
 int timeoutpacket ;

int
option_timeout(int peer)
{
 int to;

 if (options[OPT_TIMEOUT].o_request == ((void*)0))
  return (0);

 to = atoi(options[OPT_TIMEOUT].o_request);
 if (to < TIMEOUT_MIN || to > TIMEOUT_MAX) {
  tftp_log(acting_as_client ? LOG_ERR : LOG_WARNING,
      "Received bad value for timeout. "
      "Should be between %d and %d, received %d",
      TIMEOUT_MIN, TIMEOUT_MAX, to);
  send_error(peer, EBADOP);
  if (acting_as_client)
   return (1);
  exit(1);
 } else {
  timeoutpacket = to;
  options[OPT_TIMEOUT].o_reply =
   strdup(options[OPT_TIMEOUT].o_request);
 }
 settimeouts(timeoutpacket, timeoutnetwork, maxtimeouts);

 if (debug&DEBUG_OPTIONS)
  tftp_log(LOG_DEBUG, "Setting timeout to '%s'",
   options[OPT_TIMEOUT].o_reply);

 return (0);
}
