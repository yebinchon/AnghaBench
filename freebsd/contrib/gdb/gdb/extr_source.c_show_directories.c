
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int puts_filtered (char*) ;
 char* source_path ;

__attribute__((used)) static void
show_directories (char *ignore, int from_tty)
{
  puts_filtered ("Source directories searched: ");
  puts_filtered (source_path);
  puts_filtered ("\n");
}
