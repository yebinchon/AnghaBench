
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int ASN1_parse_dump (int *,unsigned char const*,int,int,int) ;
 int BIO_dump_indent (int *,char const*,int,int) ;
 int BIO_printf (int *,char*,int,char*) ;




 unsigned long X509V3_EXT_UNKNOWN_MASK ;

__attribute__((used)) static int unknown_ext_print(BIO *out, const unsigned char *ext, int extlen,
                             unsigned long flag, int indent, int supported)
{
    switch (flag & X509V3_EXT_UNKNOWN_MASK) {

    case 131:
        return 0;

    case 129:
        if (supported)
            BIO_printf(out, "%*s<Parse Error>", indent, "");
        else
            BIO_printf(out, "%*s<Not Supported>", indent, "");
        return 1;

    case 128:
        return ASN1_parse_dump(out, ext, extlen, indent, -1);
    case 130:
        return BIO_dump_indent(out, (const char *)ext, extlen, indent);

    default:
        return 1;
    }
}
