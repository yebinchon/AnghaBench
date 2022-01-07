
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;


 int BIO_printf (int ,char*,char const*,...) ;
 int NID_undef ;
 int OBJ_txt2nid (char*) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;
 int X509_NAME_add_entry_by_NID (int *,int,long,unsigned char*,int ,int,int) ;
 int X509_NAME_free (int *) ;
 int * X509_NAME_new () ;
 int bio_err ;
 int opt_getprog () ;
 int strlen (char*) ;

X509_NAME *parse_name(const char *cp, long chtype, int canmulti)
{
    int nextismulti = 0;
    char *work;
    X509_NAME *n;

    if (*cp++ != '/') {
        BIO_printf(bio_err,
                   "name is expected to be in the format "
                   "/type0=value0/type1=value1/type2=... where characters may "
                   "be escaped by \\. This name is not in that format: '%s'\n",
                   --cp);
        return ((void*)0);
    }

    n = X509_NAME_new();
    if (n == ((void*)0))
        return ((void*)0);
    work = OPENSSL_strdup(cp);
    if (work == ((void*)0))
        goto err;

    while (*cp) {
        char *bp = work;
        char *typestr = bp;
        unsigned char *valstr;
        int nid;
        int ismulti = nextismulti;
        nextismulti = 0;


        while (*cp && *cp != '=')
            *bp++ = *cp++;
        if (*cp == '\0') {
            BIO_printf(bio_err,
                    "%s: Hit end of string before finding the equals.\n",
                    opt_getprog());
            goto err;
        }
        *bp++ = '\0';
        ++cp;


        valstr = (unsigned char *)bp;
        for (; *cp && *cp != '/'; *bp++ = *cp++) {
            if (canmulti && *cp == '+') {
                nextismulti = 1;
                break;
            }
            if (*cp == '\\' && *++cp == '\0') {
                BIO_printf(bio_err,
                        "%s: escape character at end of string\n",
                        opt_getprog());
                goto err;
            }
        }
        *bp++ = '\0';


        if (*cp)
            ++cp;


        nid = OBJ_txt2nid(typestr);
        if (nid == NID_undef) {
            BIO_printf(bio_err, "%s: Skipping unknown attribute \"%s\"\n",
                      opt_getprog(), typestr);
            continue;
        }
        if (*valstr == '\0') {
            BIO_printf(bio_err,
                       "%s: No value provided for Subject Attribute %s, skipped\n",
                       opt_getprog(), typestr);
            continue;
        }
        if (!X509_NAME_add_entry_by_NID(n, nid, chtype,
                                        valstr, strlen((char *)valstr),
                                        -1, ismulti ? -1 : 0))
            goto err;
    }

    OPENSSL_free(work);
    return n;

 err:
    X509_NAME_free(n);
    OPENSSL_free(work);
    return ((void*)0);
}
