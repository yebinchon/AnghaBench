
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct ssh {int dummy; } ;


 scalar_t__ do_debug ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,size_t) ;
 char* ssh_err (int) ;
 int ssh_input_append (struct ssh*,scalar_t__ const*,size_t) ;
 int ssh_output_consume (struct ssh*,size_t) ;
 scalar_t__* ssh_output_ptr (struct ssh*,size_t*) ;
 int ssh_packet_next (struct ssh*,scalar_t__*) ;
 int stderr ;

__attribute__((used)) static int
do_send_and_receive(struct ssh *from, struct ssh *to)
{
 u_char type;
 size_t len;
 const u_char *buf;
 int r;

 for (;;) {
  if ((r = ssh_packet_next(from, &type)) != 0) {
   fprintf(stderr, "ssh_packet_next: %s\n", ssh_err(r));
   return r;
  }
  if (type != 0)
   return 0;
  buf = ssh_output_ptr(from, &len);
  if (do_debug)
   printf("%zu", len);
  if (len == 0)
   return 0;
  if ((r = ssh_output_consume(from, len)) != 0 ||
      (r = ssh_input_append(to, buf, len)) != 0)
   return r;
 }
}
