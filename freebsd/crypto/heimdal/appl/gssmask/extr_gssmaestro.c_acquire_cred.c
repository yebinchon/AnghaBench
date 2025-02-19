
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;
typedef int int32_t ;


 int eAcquireCreds ;
 int put32 (struct client*,int) ;
 int putstring (struct client*,char const*) ;
 int ret32 (struct client*,int) ;

__attribute__((used)) static int
acquire_cred(struct client *client,
      const char *username,
      const char *password,
      int32_t flags,
      int32_t *hCred)
{
    int32_t val;
    put32(client, eAcquireCreds);
    putstring(client, username);
    putstring(client, password);
    put32(client, flags);
    ret32(client, val);
    ret32(client, *hCred);
    return val;
}
