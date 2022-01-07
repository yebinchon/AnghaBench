
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputc (unsigned char,int *) ;

__attribute__((used)) static int
ucl_file_append_character (unsigned char c, size_t len, void *ud)
{
 FILE *fp = ud;

 while (len --) {
  fputc (c, fp);
 }

 return 0;
}
