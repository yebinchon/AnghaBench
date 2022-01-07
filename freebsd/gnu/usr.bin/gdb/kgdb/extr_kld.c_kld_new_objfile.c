
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int have_partial_symbols () ;
 void* kernel_file_addr ;
 void* kgdb_parse (char*) ;
 int kgdb_parse_quiet (char*) ;
 void* linker_files_addr ;
 void* module_path_addr ;
 void* off_address ;
 void* off_filename ;
 void* off_next ;
 int off_pathname ;

void
kld_new_objfile (struct objfile *objfile)
{

 if (!have_partial_symbols())
  return;







 off_address = kgdb_parse("&((struct linker_file *)0)->address");
 off_filename = kgdb_parse("&((struct linker_file *)0)->filename");
 off_pathname = kgdb_parse_quiet("&((struct linker_file *)0)->pathname");
 off_next = kgdb_parse("&((struct linker_file *)0)->link.tqe_next");
 module_path_addr = kgdb_parse("linker_path");
 linker_files_addr = kgdb_parse("&linker_files.tqh_first");
 kernel_file_addr = kgdb_parse("&linker_kernel_file");
}
