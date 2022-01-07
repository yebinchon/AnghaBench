
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int X509_NAME ;


 int X509_NAME_add_entry_by_NID (int *,int,unsigned long,unsigned char*,int,int,int) ;
 int build_data (char*,char const*,char*,int,int,char*,int,char*,char*) ;

__attribute__((used)) static int add_DN_object(X509_NAME *n, char *text, const char *def,
                         char *value, int nid, int n_min, int n_max,
                         unsigned long chtype, int mval)
{
    int ret = 0;
    char buf[1024];

    ret = build_data(text, def, value, n_min, n_max, buf, sizeof(buf),
                     "DN value", "DN default");
    if ((ret == 0) || (ret == 1))
        return ret;
    ret = 1;

    if (!X509_NAME_add_entry_by_NID(n, nid, chtype,
                                    (unsigned char *)buf, -1, -1, mval))
        ret = 0;

    return ret;
}
