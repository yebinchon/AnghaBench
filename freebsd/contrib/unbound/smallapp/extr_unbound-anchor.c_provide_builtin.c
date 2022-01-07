
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int try_read_anchor (char const*) ;
 int write_builtin_anchor (char const*) ;

__attribute__((used)) static int
provide_builtin(const char* root_anchor_file, int* used_builtin)
{

 switch(try_read_anchor(root_anchor_file))
 {
  case 0:
   write_builtin_anchor(root_anchor_file);
   *used_builtin = 1;
   break;
  case 1:
   return 0;
  case 2:
  default:
   break;
 }
 return 1;
}
