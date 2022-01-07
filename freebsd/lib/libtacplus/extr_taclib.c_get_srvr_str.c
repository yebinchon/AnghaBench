
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int * body; } ;
struct TYPE_4__ {TYPE_1__ u; int length; } ;
struct tac_handle {scalar_t__ srvr_pos; TYPE_2__ response; } ;
struct srvr_str {size_t len; int * data; } ;


 int generr (struct tac_handle*,char*,char const*,int ,int ) ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static int
get_srvr_str(struct tac_handle *h, const char *field,
      struct srvr_str *ss, size_t len)
{
 if (h->srvr_pos + len > ntohl(h->response.length)) {
  generr(h, "Invalid length field in %s response from server "
         "(%lu > %lu)", field, (u_long)(h->srvr_pos + len),
         (u_long)ntohl(h->response.length));
  return -1;
 }
 ss->data = len != 0 ? h->response.u.body + h->srvr_pos : ((void*)0);
 ss->len = len;
 h->srvr_pos += len;
 return 0;
}
