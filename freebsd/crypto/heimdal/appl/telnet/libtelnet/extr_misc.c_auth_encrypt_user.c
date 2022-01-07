
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UserNameRequested ;
 int free (int) ;
 int strdup (char const*) ;

void
auth_encrypt_user(const char *name)
{
    if (UserNameRequested)
 free(UserNameRequested);
    UserNameRequested = name ? strdup(name) : 0;
}
