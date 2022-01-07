
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcm_ntlm_cred {int session; int uid; int domain; int user; struct kcm_ntlm_cred* next; } ;
typedef int kcm_client ;


 scalar_t__ kcm_is_same_session (int *,int ,int ) ;
 struct kcm_ntlm_cred* ntlm_head ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static struct kcm_ntlm_cred *
find_ntlm_cred(const char *user, const char *domain, kcm_client *client)
{
    struct kcm_ntlm_cred *c;

    for (c = ntlm_head; c != ((void*)0); c = c->next)
 if ((user[0] == '\0' || strcmp(user, c->user) == 0) &&
     (domain == ((void*)0) || strcmp(domain, c->domain) == 0) &&
     kcm_is_same_session(client, c->uid, c->session))
     return c;

    return ((void*)0);
}
