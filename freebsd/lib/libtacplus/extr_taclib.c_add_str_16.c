
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_3__ {scalar_t__ body; } ;
struct TYPE_4__ {int length; TYPE_1__ u; } ;
struct tac_handle {TYPE_2__ request; } ;
struct clnt_str {size_t len; int * data; } ;


 int BODYSIZE ;
 int free_str (struct clnt_str*) ;
 int generr (struct tac_handle*,char*) ;
 int htonl (int) ;
 int htons (size_t) ;
 int memcpy (scalar_t__,int *,size_t) ;
 int ntohl (int ) ;

__attribute__((used)) static int
add_str_16(struct tac_handle *h, u_int16_t *fld, struct clnt_str *cs)
{
 size_t len;

 len = cs->len;
 if (cs->data == ((void*)0))
  len = 0;
 if (len != 0) {
  int offset;

  if (len > 0xffff) {
   generr(h, "Field too long");
   return -1;
  }
  offset = ntohl(h->request.length);
  if (offset + len > BODYSIZE) {
   generr(h, "Message too long");
   return -1;
  }
  memcpy(h->request.u.body + offset, cs->data, len);
  h->request.length = htonl(offset + len);
 }
 *fld = htons(len);
 free_str(cs);
 return 0;
}
