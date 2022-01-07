
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVUTIL_SOCKET_ERROR () ;
 char* evutil_socket_error_to_string (int ) ;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;

__attribute__((used)) static void
my_perror(const char *s)
{
 fprintf(stderr, "%s: %s",
     s, evutil_socket_error_to_string(EVUTIL_SOCKET_ERROR()));
}
