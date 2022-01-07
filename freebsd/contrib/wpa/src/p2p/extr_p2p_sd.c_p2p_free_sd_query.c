
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_sd_query {int tlvs; } ;


 int os_free (struct p2p_sd_query*) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void p2p_free_sd_query(struct p2p_sd_query *q)
{
 if (q == ((void*)0))
  return;
 wpabuf_free(q->tlvs);
 os_free(q);
}
