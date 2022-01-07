
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
typedef int krb5_context ;


 int AF_UNIX ;
 char* kadm5_log_signal_socket (int ) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
set_socket_name(krb5_context context, struct sockaddr_un *un)
{
    const char *fn = kadm5_log_signal_socket(context);

    memset(un, 0, sizeof(*un));
    un->sun_family = AF_UNIX;
    strlcpy (un->sun_path, fn, sizeof(un->sun_path));

}
