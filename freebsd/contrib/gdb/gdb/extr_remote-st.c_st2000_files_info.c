
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int baudrate ;
 char* dev_name ;
 int printf (char*,char*,int) ;

__attribute__((used)) static void
st2000_files_info (void)
{
  printf ("\tAttached to %s at %d baud.\n",
   dev_name, baudrate);
}
