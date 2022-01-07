
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {int fd; char* errmsg; int bindto; scalar_t__ eap_msg; scalar_t__ out_created; int type; scalar_t__ authentic_pos; scalar_t__ chap_pass; scalar_t__ pass_pos; scalar_t__ pass_len; int pass; int ident; scalar_t__ num_servers; } ;


 int INADDR_ANY ;
 int RADIUS_AUTH ;
 scalar_t__ malloc (int) ;
 int memset (int ,int ,int) ;
 int random () ;
 int srandomdev () ;

struct rad_handle *
rad_auth_open(void)
{
 struct rad_handle *h;

 h = (struct rad_handle *)malloc(sizeof(struct rad_handle));
 if (h != ((void*)0)) {
  srandomdev();
  h->fd = -1;
  h->num_servers = 0;
  h->ident = random();
  h->errmsg[0] = '\0';
  memset(h->pass, 0, sizeof h->pass);
  h->pass_len = 0;
  h->pass_pos = 0;
  h->chap_pass = 0;
  h->authentic_pos = 0;
  h->type = RADIUS_AUTH;
  h->out_created = 0;
  h->eap_msg = 0;
  h->bindto = INADDR_ANY;
 }
 return h;
}
