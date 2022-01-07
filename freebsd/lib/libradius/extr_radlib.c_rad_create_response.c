
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {scalar_t__ type; int* out; int* in; int out_created; scalar_t__ authentic_pos; int out_len; } ;


 int LEN_AUTH ;
 int POS_ATTRS ;
 size_t POS_AUTH ;
 size_t POS_CODE ;
 size_t POS_IDENT ;
 scalar_t__ RADIUS_SERVER ;
 int clear_password (struct rad_handle*) ;
 int generr (struct rad_handle*,char*) ;
 int memset (int*,int ,int ) ;

int
rad_create_response(struct rad_handle *h, int code)
{

 if (h->type != RADIUS_SERVER) {
  generr(h, "denied function call");
  return (-1);
 }
 h->out[POS_CODE] = code;
 h->out[POS_IDENT] = h->in[POS_IDENT];
 memset(&h->out[POS_AUTH], 0, LEN_AUTH);
 h->out_len = POS_ATTRS;
 clear_password(h);
 h->authentic_pos = 0;
 h->out_created = 1;
 return 0;
}
