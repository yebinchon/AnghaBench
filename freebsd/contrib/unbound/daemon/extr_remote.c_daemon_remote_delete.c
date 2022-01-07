
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daemon_remote {scalar_t__ ctx; } ;


 int SSL_CTX_free (scalar_t__) ;
 int daemon_remote_clear (struct daemon_remote*) ;
 int free (struct daemon_remote*) ;

void daemon_remote_delete(struct daemon_remote* rc)
{
 if(!rc) return;
 daemon_remote_clear(rc);
 if(rc->ctx) {
  SSL_CTX_free(rc->ctx);
 }
 free(rc);
}
