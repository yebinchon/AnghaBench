
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_addr_info {int dummy; } ;
struct objfile {int dummy; } ;


 struct objfile* symbol_file_add_with_addrs_or_offsets (char*,int,struct section_addr_info*,int ,int ,int,int) ;

struct objfile *
symbol_file_add (char *name, int from_tty, struct section_addr_info *addrs,
   int mainline, int flags)
{
  return symbol_file_add_with_addrs_or_offsets (name, from_tty, addrs, 0, 0,
                                                mainline, flags);
}
