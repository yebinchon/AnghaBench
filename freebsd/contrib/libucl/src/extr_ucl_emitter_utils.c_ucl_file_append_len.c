
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fwrite (unsigned char const*,size_t,int,int *) ;

__attribute__((used)) static int
ucl_file_append_len (const unsigned char *str, size_t len, void *ud)
{
 FILE *fp = ud;

 fwrite (str, len, 1, fp);

 return 0;
}
