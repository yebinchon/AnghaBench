
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509_PURPOSE ;
typedef int X509_EXTENSION ;
struct TYPE_6__ {int ex_flags; int ex_kusage; scalar_t__ ex_xkusage; } ;
typedef TYPE_1__ X509 ;


 int EXFLAG_KUSAGE ;
 int EXFLAG_XKUSAGE ;
 int KU_DIGITAL_SIGNATURE ;
 int KU_NON_REPUDIATION ;
 int NID_ext_key_usage ;
 int X509_EXTENSION_get_critical (int *) ;
 int * X509_get_ext (TYPE_1__*,int) ;
 int X509_get_ext_by_NID (TYPE_1__ const*,int ,int) ;
 scalar_t__ XKU_TIMESTAMP ;
 int check_ca (TYPE_1__ const*) ;

__attribute__((used)) static int check_purpose_timestamp_sign(const X509_PURPOSE *xp, const X509 *x,
                                        int ca)
{
    int i_ext;


    if (ca)
        return check_ca(x);







    if ((x->ex_flags & EXFLAG_KUSAGE)
        && ((x->ex_kusage & ~(KU_NON_REPUDIATION | KU_DIGITAL_SIGNATURE)) ||
            !(x->ex_kusage & (KU_NON_REPUDIATION | KU_DIGITAL_SIGNATURE))))
        return 0;


    if (!(x->ex_flags & EXFLAG_XKUSAGE) || x->ex_xkusage != XKU_TIMESTAMP)
        return 0;


    i_ext = X509_get_ext_by_NID(x, NID_ext_key_usage, -1);
    if (i_ext >= 0) {
        X509_EXTENSION *ext = X509_get_ext((X509 *)x, i_ext);
        if (!X509_EXTENSION_get_critical(ext))
            return 0;
    }

    return 1;
}
