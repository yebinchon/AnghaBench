
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * o_reply; int * o_request; } ;


 int DEBUG_OPTIONS ;
 int EBADOP ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_WARNING ;
 size_t OPT_ROLLOVER ;
 scalar_t__ acting_as_client ;
 int debug ;
 TYPE_1__* options ;
 int send_error (int,int ) ;
 scalar_t__ strcmp (int *,char*) ;
 int * strdup (int *) ;
 int tftp_log (int ,char*,int *) ;

int
option_rollover(int peer)
{

 if (options[OPT_ROLLOVER].o_request == ((void*)0))
  return (0);

 if (strcmp(options[OPT_ROLLOVER].o_request, "0") != 0
  && strcmp(options[OPT_ROLLOVER].o_request, "1") != 0) {
  tftp_log(acting_as_client ? LOG_ERR : LOG_WARNING,
      "Bad value for rollover, "
      "should be either 0 or 1, received '%s', "
      "ignoring request",
      options[OPT_ROLLOVER].o_request);
  if (acting_as_client) {
   send_error(peer, EBADOP);
   return (1);
  }
  return (0);
 }
 options[OPT_ROLLOVER].o_reply =
  strdup(options[OPT_ROLLOVER].o_request);

 if (debug&DEBUG_OPTIONS)
  tftp_log(LOG_DEBUG, "Setting rollover to '%s'",
   options[OPT_ROLLOVER].o_reply);

 return (0);
}
