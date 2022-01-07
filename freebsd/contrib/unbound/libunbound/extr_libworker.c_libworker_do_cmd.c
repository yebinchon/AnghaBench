
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct libworker {int base; } ;






 int comm_base_exit (int ) ;
 int context_serial_getcmd (int *,int ) ;
 int free (int *) ;
 int handle_cancel (struct libworker*,int *,int ) ;
 int handle_newq (struct libworker*,int *,int ) ;
 int log_err (char*,int) ;

__attribute__((used)) static void
libworker_do_cmd(struct libworker* w, uint8_t* msg, uint32_t len)
{
 switch(context_serial_getcmd(msg, len)) {
  default:
  case 131:
   log_err("unknown command for bg worker %d",
    (int)context_serial_getcmd(msg, len));


  case 128:
   free(msg);
   comm_base_exit(w->base);
   break;
  case 129:
   handle_newq(w, msg, len);
   break;
  case 130:
   handle_cancel(w, msg, len);
   break;
 }
}
