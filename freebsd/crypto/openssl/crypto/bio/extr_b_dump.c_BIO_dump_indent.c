
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_dump_indent_cb (int ,int *,char const*,int,int) ;
 int write_bio ;

int BIO_dump_indent(BIO *bp, const char *s, int len, int indent)
{
    return BIO_dump_indent_cb(write_bio, bp, s, len, indent);
}
