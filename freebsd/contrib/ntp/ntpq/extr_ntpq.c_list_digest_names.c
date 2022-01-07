
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {char const** seen; char* list; int member_2; int * member_1; int * member_0; } ;


 int EVP_MD_do_all_sorted (int ,struct hstate*) ;
 int INIT_SSL () ;
 int K_PER_LINE ;
 scalar_t__ emalloc (int) ;
 scalar_t__ emalloc_zero (int) ;
 int free (char const**) ;
 char* insert_cmac (char*) ;
 int list_md_fn ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *
list_digest_names(void)
{
 char *list = ((void*)0);
 list = (char *)emalloc(sizeof("md5"));
 strcpy(list, "md5");


 return list;
}
