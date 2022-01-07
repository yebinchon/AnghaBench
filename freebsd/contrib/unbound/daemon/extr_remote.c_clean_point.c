
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_state {int c; scalar_t__ ssl; } ;
struct daemon_remote {int active; int busy_list; } ;


 int SSL_free (scalar_t__) ;
 int SSL_shutdown (scalar_t__) ;
 int comm_point_delete (int ) ;
 int free (struct rc_state*) ;
 int state_list_remove_elem (int *,int ) ;

__attribute__((used)) static void
clean_point(struct daemon_remote* rc, struct rc_state* s)
{
 state_list_remove_elem(&rc->busy_list, s->c);
 rc->active --;
 if(s->ssl) {
  SSL_shutdown(s->ssl);
  SSL_free(s->ssl);
 }
 comm_point_delete(s->c);
 free(s);
}
