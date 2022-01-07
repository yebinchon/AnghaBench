
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct pollfd {scalar_t__ fd; int events; int revents; } ;
struct in_addr {int dummy; } ;
struct hostent {char* h_name; } ;
typedef scalar_t__ ssize_t ;
typedef int socklen_t ;
typedef int sin ;
struct TYPE_11__ {scalar_t__ socket; int in_fd; scalar_t__ out; int in; int client_ip; int client_hn; } ;
struct TYPE_10__ {int log; TYPE_2__ console; } ;
typedef TYPE_1__ osm_opensm_t ;
typedef TYPE_2__ osm_console_t ;
typedef int nfds_t ;
struct TYPE_12__ {scalar_t__ on; int (* loop_function ) (TYPE_1__*,scalar_t__) ;} ;


 int AF_INET ;
 int OSM_LOG (int *,int ,char*,int ,...) ;
 int OSM_LOG_ERROR ;
 int POLLHUP ;
 int POLLIN ;
 int accept (scalar_t__,struct sockaddr*,int*) ;
 int cio_close (TYPE_2__*,int *) ;
 int cio_open (TYPE_2__*,int,int *) ;
 int close (int) ;
 int errno ;
 int fflush (scalar_t__) ;
 int free (char*) ;
 struct hostent* gethostbyaddr (char const*,int,int ) ;
 scalar_t__ getline (char**,size_t*,int ) ;
 int * inet_ntop (int ,int *,int ,int) ;
 scalar_t__ is_authorized (TYPE_2__*) ;
 TYPE_6__ loop_command ;
 scalar_t__ loop_command_check_time () ;
 int osm_console_prompt (scalar_t__) ;
 int parse_cmd_line (char*,TYPE_1__*) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int snprintf (int ,int,char*,...) ;
 int strerror (int ) ;
 int stub1 (TYPE_1__*,scalar_t__) ;

int osm_console(osm_opensm_t * p_osm)
{
 struct pollfd pollfd[2];
 char *p_line;
 size_t len;
 ssize_t n;
 struct pollfd *fds;
 nfds_t nfds;
 osm_console_t *p_oct = &p_osm->console;

 pollfd[0].fd = p_oct->socket;
 pollfd[0].events = POLLIN;
 pollfd[0].revents = 0;

 pollfd[1].fd = p_oct->in_fd;
 pollfd[1].events = POLLIN;
 pollfd[1].revents = 0;

 fds = p_oct->socket < 0 ? &pollfd[1] : pollfd;
 nfds = p_oct->socket < 0 || pollfd[1].fd < 0 ? 1 : 2;

 if (loop_command.on && loop_command_check_time() &&
     loop_command.loop_function) {
  if (p_oct->out) {
   loop_command.loop_function(p_osm, p_oct->out);
   fflush(p_oct->out);
  } else {
   loop_command.on = 0;
  }
 }

 if (poll(fds, nfds, 1000) <= 0)
  return 0;
 if (pollfd[1].revents & POLLIN) {
  p_line = ((void*)0);

  n = getline(&p_line, &len, p_oct->in);
  if (n > 0) {

   parse_cmd_line(p_line, p_osm);
   if (!loop_command.on) {
    osm_console_prompt(p_oct->out);
   }
  } else
   cio_close(p_oct, &p_osm->log);
  if (p_line)
   free(p_line);
  return 0;
 }

 if (pollfd[1].revents & POLLHUP) {
  return -1;
 }

 return 0;
}
