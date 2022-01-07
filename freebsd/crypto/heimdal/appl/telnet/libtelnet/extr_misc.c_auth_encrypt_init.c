
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* LocalHostName ;
 char const* RemoteHostName ;
 scalar_t__ UserNameRequested ;
 int auth_init (char const*,int) ;
 int encrypt_init (char const*,int) ;
 int free (scalar_t__) ;

void
auth_encrypt_init(const char *local, const char *remote, const char *name,
    int server)
{
    RemoteHostName = remote;
    LocalHostName = local;






    if (UserNameRequested) {
 free(UserNameRequested);
 UserNameRequested = 0;
    }
}
