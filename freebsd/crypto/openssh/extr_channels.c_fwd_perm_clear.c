
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct permission {int listen_path; int listen_host; int host_to_connect; } ;


 int bzero (struct permission*,int) ;
 int free (int ) ;

__attribute__((used)) static void
fwd_perm_clear(struct permission *perm)
{
 free(perm->host_to_connect);
 free(perm->listen_host);
 free(perm->listen_path);
 bzero(perm, sizeof(*perm));
}
