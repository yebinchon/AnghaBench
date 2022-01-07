
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int to ;
struct ssh {struct session_state* state; } ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr {int dummy; } ;
struct session_state {int connection_in; int connection_out; } ;
typedef int socklen_t ;
typedef int from ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ getpeername (int,struct sockaddr*,int*) ;
 scalar_t__ memcmp (struct sockaddr_storage*,struct sockaddr_storage*,int) ;
 int memset (struct sockaddr_storage*,int ,int) ;

int
ssh_packet_connection_is_on_socket(struct ssh *ssh)
{
 struct session_state *state;
 struct sockaddr_storage from, to;
 socklen_t fromlen, tolen;

 if (ssh == ((void*)0) || ssh->state == ((void*)0))
  return 0;

 state = ssh->state;
 if (state->connection_in == -1 || state->connection_out == -1)
  return 0;

 if (state->connection_in == state->connection_out)
  return 1;
 fromlen = sizeof(from);
 memset(&from, 0, sizeof(from));
 if (getpeername(state->connection_in, (struct sockaddr *)&from,
     &fromlen) < 0)
  return 0;
 tolen = sizeof(to);
 memset(&to, 0, sizeof(to));
 if (getpeername(state->connection_out, (struct sockaddr *)&to,
     &tolen) < 0)
  return 0;
 if (fromlen != tolen || memcmp(&from, &to, fromlen) != 0)
  return 0;
 if (from.ss_family != AF_INET && from.ss_family != AF_INET6)
  return 0;
 return 1;
}
