
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrapframe {int uf_type; } ;


 int UF_DONE (struct utrapframe*) ;




 int __emul_insn (struct utrapframe*) ;
 int __fpu_exception (struct utrapframe*) ;
 int __unaligned_fixup (struct utrapframe*) ;
 int __utrap_kill_self (int) ;
 int __utrap_write (char*) ;
 char** utrap_msg ;

void
__sparc_utrap(struct utrapframe *uf)
{
 int sig;

 switch (uf->uf_type) {
 case 131:
 case 130:
  sig = __fpu_exception(uf);
  break;
 case 129:
  sig = __emul_insn(uf);
  break;
 case 128:
  sig = __unaligned_fixup(uf);
  break;
 default:
  break;
 }
 if (sig) {
  __utrap_write("__sparc_utrap: fatal ");
  __utrap_write(utrap_msg[uf->uf_type]);
  __utrap_write("\n");
  __utrap_kill_self(sig);
 }
 UF_DONE(uf);
}
