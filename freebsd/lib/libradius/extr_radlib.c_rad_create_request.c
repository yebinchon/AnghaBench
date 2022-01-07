
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_char ;
struct rad_handle {scalar_t__ type; scalar_t__ num_servers; int* out; int ident; int out_created; scalar_t__ authentic_pos; int out_len; } ;


 int LEN_AUTH ;
 int POS_ATTRS ;
 int POS_AUTH ;
 size_t POS_CODE ;
 size_t POS_IDENT ;
 scalar_t__ RADIUS_SERVER ;
 int RAD_ACCESS_REQUEST ;
 int clear_password (struct rad_handle*) ;
 int generr (struct rad_handle*,char*) ;
 int memset (int*,int ,int) ;
 long random () ;

int
rad_create_request(struct rad_handle *h, int code)
{
 int i;

 if (h->type == RADIUS_SERVER) {
  generr(h, "denied function call");
  return (-1);
 }
 if (h->num_servers == 0) {
      generr(h, "No RADIUS servers specified");
  return (-1);
 }
 h->out[POS_CODE] = code;
 h->out[POS_IDENT] = ++h->ident;
 if (code == RAD_ACCESS_REQUEST) {

  for (i = 0; i < LEN_AUTH; i += 2) {
   long r;
   r = random();
   h->out[POS_AUTH+i] = (u_char)r;
   h->out[POS_AUTH+i+1] = (u_char)(r >> 8);
  }
 } else
  memset(&h->out[POS_AUTH], 0, LEN_AUTH);
 h->out_len = POS_ATTRS;
 clear_password(h);
 h->authentic_pos = 0;
 h->out_created = 1;
 return 0;
}
