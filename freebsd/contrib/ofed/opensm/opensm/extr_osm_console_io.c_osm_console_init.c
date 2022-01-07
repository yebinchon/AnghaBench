
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;
struct TYPE_7__ {int console_port; int console; } ;
typedef TYPE_2__ osm_subn_opt_t ;
typedef int osm_log_t ;
struct TYPE_8__ {int socket; int in_fd; int out_fd; int * out; int * in; int client_type; } ;
typedef TYPE_3__ osm_console_t ;
typedef int optval ;


 int AF_INET ;
 int INADDR_ANY ;
 int INADDR_LOOPBACK ;
 int OSM_LOCAL_CONSOLE ;
 int OSM_LOG (int *,int ,char*,int ) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_INFO ;
 int OSM_LOOPBACK_CONSOLE ;
 int OSM_REMOTE_CONSOLE ;
 int SIGPIPE ;
 int SIG_IGN ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int errno ;
 void* fileno (void*) ;
 void* htonl (int ) ;
 int htons (int ) ;
 scalar_t__ listen (int,int) ;
 int osm_console_prompt (int *) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int signal (int ,int ) ;
 int socket (int ,int ,int ) ;
 void* stdin ;
 void* stdout ;
 scalar_t__ strcmp (int ,int ) ;
 int strerror (int ) ;
 int strncpy (int ,int ,int) ;

int osm_console_init(osm_subn_opt_t * opt, osm_console_t * p_oct, osm_log_t * p_log)
{
 p_oct->socket = -1;
 strncpy(p_oct->client_type, opt->console, sizeof(p_oct->client_type));


 if (strcmp(opt->console, OSM_LOCAL_CONSOLE) == 0) {
  p_oct->in = stdin;
  p_oct->out = stdout;
  p_oct->in_fd = fileno(stdin);
  p_oct->out_fd = fileno(stdout);

  osm_console_prompt(p_oct->out);
 }

 return 0;
}
