
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_GEN_FLAG ;
 unsigned long ASN1_tag2bit (int) ;
 unsigned long B_ASN1_DIRECTORYSTRING ;
 int asn1_str2tag (char const*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int mask_cb(const char *elem, int len, void *arg)
{
    unsigned long *pmask = arg, tmpmask;
    int tag;
    if (elem == ((void*)0))
        return 0;
    if ((len == 3) && (strncmp(elem, "DIR", 3) == 0)) {
        *pmask |= B_ASN1_DIRECTORYSTRING;
        return 1;
    }
    tag = asn1_str2tag(elem, len);
    if (!tag || (tag & ASN1_GEN_FLAG))
        return 0;
    tmpmask = ASN1_tag2bit(tag);
    if (!tmpmask)
        return 0;
    *pmask |= tmpmask;
    return 1;
}
