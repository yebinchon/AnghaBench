
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c_status; scalar_t__ c_data; scalar_t__ c_off; scalar_t__ c_len; int c_plen; int c_name; } ;
typedef TYPE_1__ con ;


 int CS_CON ;
 int CS_KEYS ;

 size_t atomicio (int ,int,scalar_t__,scalar_t__) ;
 int confree (int) ;
 int congreet (int) ;
 int contouch (int) ;
 int errno ;
 int error (char*,int ,char*) ;
 int fatal (char*,int) ;
 TYPE_1__* fdcon ;
 int htonl (int) ;
 int read ;
 char* strerror (int ) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static void
conread(int s)
{
 con *c = &fdcon[s];
 size_t n;

 if (c->c_status == CS_CON) {
  congreet(s);
  return;
 }
 n = atomicio(read, s, c->c_data + c->c_off, c->c_len - c->c_off);
 if (n == 0) {
  error("read (%s): %s", c->c_name, strerror(errno));
  confree(s);
  return;
 }
 c->c_off += n;

 if (c->c_off == c->c_len)
  switch (c->c_status) {
  case 128:
   c->c_plen = htonl(c->c_plen);
   c->c_len = c->c_plen + 8 - (c->c_plen & 7);
   c->c_off = 0;
   c->c_data = xmalloc(c->c_len);
   c->c_status = CS_KEYS;
   break;
  default:
   fatal("conread: invalid status %d", c->c_status);
   break;
  }

 contouch(s);
}
