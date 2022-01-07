
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * LIST_FIRST (int *) ;
 int PF_OPT_SHOWALL ;
 int classes ;
 int fingerprint_count ;
 int pfctl_print_title (char*) ;
 int print_name_list (int,int *,char*) ;
 int printf (char*,...) ;
 int sort_name_list (int,int *) ;

void
pfctl_show_fingerprints(int opts)
{
 if (LIST_FIRST(&classes) != ((void*)0)) {
  if (opts & PF_OPT_SHOWALL) {
   pfctl_print_title("OS FINGERPRINTS:");
   printf("%u fingerprints loaded\n", fingerprint_count);
  } else {
   printf("Class\tVersion\tSubtype(subversion)\n");
   printf("-----\t-------\t-------------------\n");
   sort_name_list(opts, &classes);
   print_name_list(opts, &classes, "");
  }
 }
}
