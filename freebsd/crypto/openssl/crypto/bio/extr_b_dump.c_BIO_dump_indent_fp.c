
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BIO_dump_indent_cb (int ,int *,char const*,int,int) ;
 int write_fp ;

int BIO_dump_indent_fp(FILE *fp, const char *s, int len, int indent)
{
    return BIO_dump_indent_cb(write_fp, fp, s, len, indent);
}
