
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;
typedef int BIO ;


 int X509_NAME_print (int *,int const*,int) ;
 unsigned long XN_FLAG_COMPAT ;
 int do_name_ex (int ,int *,int const*,int,unsigned long) ;
 int send_bio_chars ;

int X509_NAME_print_ex(BIO *out, const X509_NAME *nm, int indent,
                       unsigned long flags)
{
    if (flags == XN_FLAG_COMPAT)
        return X509_NAME_print(out, nm, indent);
    return do_name_ex(send_bio_chars, out, nm, indent, flags);
}
