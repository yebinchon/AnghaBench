
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_group_member {int client_info; int p2p_ie; int wfd_ie; } ;


 int os_free (struct p2p_group_member*) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void p2p_group_free_member(struct p2p_group_member *m)
{
 wpabuf_free(m->wfd_ie);
 wpabuf_free(m->p2p_ie);
 wpabuf_free(m->client_info);
 os_free(m);
}
