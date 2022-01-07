
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVUTIL_SOCKET_ERROR () ;
 char* evutil_socket_error_to_string (int ) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int perror (char const*) ;
 int stderr ;

__attribute__((used)) static void
sock_perror(const char *s)
{




 perror(s);

}
