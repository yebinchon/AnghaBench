
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {long tf_rsp; long tf_rip; long tf_rbp; int tf_rax; int tf_trapno; } ;
struct thread {int dummy; } ;
struct amd64_frame {int f_frame; int f_retaddr; } ;
typedef int db_expr_t ;
typedef scalar_t__ db_addr_t ;
typedef int c_db_sym_t ;


 int DB_STGY_ANY ;
 int FALSE ;
 scalar_t__ INKERNEL (long) ;

 int NORMAL ;


 long db_get_value (long,int,int ) ;
 int db_print_stack_entry (char const*,long,int *) ;
 int db_printf (char*,...) ;
 int db_search_symbol (long,int ,int *) ;
 int db_symbol_values (int ,char const**,int *) ;
 int decode_syscall (int ,struct thread*) ;
 int panic (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static void
db_nextframe(struct amd64_frame **fp, db_addr_t *ip, struct thread *td)
{
 struct trapframe *tf;
 int frame_type;
 long rip, rsp, rbp;
 db_expr_t offset;
 c_db_sym_t sym;
 const char *name;

 rip = db_get_value((long) &(*fp)->f_retaddr, 8, FALSE);
 rbp = db_get_value((long) &(*fp)->f_frame, 8, FALSE);
 frame_type = NORMAL;
 sym = db_search_symbol(rip - 1, DB_STGY_ANY, &offset);
 db_symbol_values(sym, &name, ((void*)0));
 if (name != ((void*)0)) {
  if (strcmp(name, "calltrap") == 0 ||
      strcmp(name, "fork_trampoline") == 0 ||
      strcmp(name, "mchk_calltrap") == 0 ||
      strcmp(name, "nmi_calltrap") == 0 ||
      strcmp(name, "Xdblfault") == 0)
   frame_type = 128;
  else if (strncmp(name, "Xatpic_intr", 11) == 0 ||
      strncmp(name, "Xapic_isr", 9) == 0 ||
      strcmp(name, "Xxen_intr_upcall") == 0 ||
      strcmp(name, "Xtimerint") == 0 ||
      strcmp(name, "Xipi_intr_bitmap_handler") == 0 ||
      strcmp(name, "Xcpustop") == 0 ||
      strcmp(name, "Xcpususpend") == 0 ||
      strcmp(name, "Xrendezvous") == 0)
   frame_type = 130;
  else if (strcmp(name, "Xfast_syscall") == 0 ||
      strcmp(name, "Xfast_syscall_pti") == 0 ||
      strcmp(name, "fast_syscall_common") == 0)
   frame_type = 129;




 }




 if (frame_type == NORMAL) {
  *ip = (db_addr_t) rip;
  *fp = (struct amd64_frame *) rbp;
  return;
 }

 db_print_stack_entry(name, rip, &(*fp)->f_frame);





 tf = (struct trapframe *)((long)*fp + 16);

 if (INKERNEL((long) tf)) {
  rsp = tf->tf_rsp;
  rip = tf->tf_rip;
  rbp = tf->tf_rbp;
  switch (frame_type) {
  case 128:
   db_printf("--- trap %#r", tf->tf_trapno);
   break;
  case 129:
   db_printf("--- syscall");
   decode_syscall(tf->tf_rax, td);
   break;
  case 130:
   db_printf("--- interrupt");
   break;
  default:
   panic("The moon has moved again.");
  }
  db_printf(", rip = %#lr, rsp = %#lr, rbp = %#lr ---\n", rip,
      rsp, rbp);
 }

 *ip = (db_addr_t) rip;
 *fp = (struct amd64_frame *) rbp;
}
