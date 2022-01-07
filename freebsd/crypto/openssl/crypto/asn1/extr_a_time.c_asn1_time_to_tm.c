
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_3__ {scalar_t__ type; int flags; int length; scalar_t__ data; } ;
typedef TYPE_1__ ASN1_TIME ;


 int ASN1_STRING_FLAG_X509_TIME ;
 int OPENSSL_gmtime_adj (struct tm*,int ,int) ;
 scalar_t__ V_ASN1_GENERALIZEDTIME ;
 scalar_t__ V_ASN1_UTCTIME ;
 scalar_t__ ascii_isdigit (char) ;
 int determine_days (struct tm*) ;
 int leap_year (int ) ;
 int memset (struct tm*,int ,int) ;

int asn1_time_to_tm(struct tm *tm, const ASN1_TIME *d)
{
    static const int min[9] = { 0, 0, 1, 1, 0, 0, 0, 0, 0 };
    static const int max[9] = { 99, 99, 12, 31, 23, 59, 59, 12, 59 };
    static const int mdays[12] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
    char *a;
    int n, i, i2, l, o, min_l = 11, strict = 0, end = 6, btz = 5, md;
    struct tm tmp;



    const char upper_z = 'Z', num_zero = '0', period = '.', minus = '-', plus = '+';
    if (d->type == V_ASN1_UTCTIME) {
        if (d->flags & ASN1_STRING_FLAG_X509_TIME) {
            min_l = 13;
            strict = 1;
        }
    } else if (d->type == V_ASN1_GENERALIZEDTIME) {
        end = 7;
        btz = 6;
        if (d->flags & ASN1_STRING_FLAG_X509_TIME) {
            min_l = 15;
            strict = 1;
        } else {
            min_l = 13;
        }
    } else {
        return 0;
    }

    l = d->length;
    a = (char *)d->data;
    o = 0;
    memset(&tmp, 0, sizeof(tmp));







    if (l < min_l)
        goto err;
    for (i = 0; i < end; i++) {
        if (!strict && (i == btz) && ((a[o] == upper_z) || (a[o] == plus) || (a[o] == minus))) {
            i++;
            break;
        }
        if (!ascii_isdigit(a[o]))
            goto err;
        n = a[o] - num_zero;

        if (++o == l)
            goto err;

        if (!ascii_isdigit(a[o]))
            goto err;
        n = (n * 10) + a[o] - num_zero;

        if (++o == l)
            goto err;

        i2 = (d->type == V_ASN1_UTCTIME) ? i + 1 : i;

        if ((n < min[i2]) || (n > max[i2]))
            goto err;
        switch (i2) {
        case 0:

            tmp.tm_year = n * 100 - 1900;
            break;
        case 1:
            if (d->type == V_ASN1_UTCTIME)
                tmp.tm_year = n < 50 ? n + 100 : n;
            else
                tmp.tm_year += n;
            break;
        case 2:
            tmp.tm_mon = n - 1;
            break;
        case 3:

            if (tmp.tm_mon == 1) {

                md = mdays[1] + leap_year(tmp.tm_year + 1900);
            } else {
                md = mdays[tmp.tm_mon];
            }
            if (n > md)
                goto err;
            tmp.tm_mday = n;
            determine_days(&tmp);
            break;
        case 4:
            tmp.tm_hour = n;
            break;
        case 5:
            tmp.tm_min = n;
            break;
        case 6:
            tmp.tm_sec = n;
            break;
        }
    }





    if (d->type == V_ASN1_GENERALIZEDTIME && a[o] == period) {
        if (strict)

            goto err;
        if (++o == l)
            goto err;
        i = o;
        while ((o < l) && ascii_isdigit(a[o]))
            o++;

        if (i == o)
            goto err;

        if (o == l)
            goto err;
    }






    if (a[o] == upper_z) {
        o++;
    } else if (!strict && ((a[o] == plus) || (a[o] == minus))) {
        int offsign = a[o] == minus ? 1 : -1;
        int offset = 0;

        o++;






        if (o + 4 != l)
            goto err;
        for (i = end; i < end + 2; i++) {
            if (!ascii_isdigit(a[o]))
                goto err;
            n = a[o] - num_zero;
            o++;
            if (!ascii_isdigit(a[o]))
                goto err;
            n = (n * 10) + a[o] - num_zero;
            i2 = (d->type == V_ASN1_UTCTIME) ? i + 1 : i;
            if ((n < min[i2]) || (n > max[i2]))
                goto err;

            if (tm != ((void*)0)) {
                if (i == end)
                    offset = n * 3600;
                else if (i == end + 1)
                    offset += n * 60;
            }
            o++;
        }
        if (offset && !OPENSSL_gmtime_adj(&tmp, 0, offset * offsign))
            goto err;
    } else {

        goto err;
    }
    if (o == l) {

        if (tm != ((void*)0))
            *tm = tmp;
        return 1;
    }
 err:
    return 0;
}
