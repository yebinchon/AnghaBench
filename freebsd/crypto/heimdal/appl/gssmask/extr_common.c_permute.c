
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWAP (char**,int,int) ;
 int add_list (char****,size_t*,char**,int const) ;

__attribute__((used)) static void
permute(char ****list, size_t *listlen,
 char **str, const int start, const int len)
{
    int i, j;



    for (i = start; i < len - 1; i++) {
 for (j = i+1; j < len; j++) {
     { char *t = str[i]; str[i] = str[j]; str[j] = t; };
     permute(list, listlen, str, i+1, len);
     { char *t = str[i]; str[i] = str[j]; str[j] = t; };
 }
    }
    add_list(list, listlen, str, len);
}
