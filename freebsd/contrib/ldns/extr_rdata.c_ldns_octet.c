
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;


 int LDNS_STATUS_DDD_OVERFLOW ;
 int LDNS_STATUS_EMPTY_LABEL ;
 int LDNS_STATUS_OK ;

ldns_status
ldns_octet(char *word, size_t *length)
{
    char *s;
    char *p;
    *length = 0;

    for (s = p = word; *s != '\0'; s++,p++) {
        switch (*s) {
            case '.':
                if (s[1] == '.') {
      return LDNS_STATUS_EMPTY_LABEL;
                }
                *p = *s;
                (*length)++;
                break;
            case '\\':
                if ('0' <= s[1] && s[1] <= '9' &&
                    '0' <= s[2] && s[2] <= '9' &&
                    '0' <= s[3] && s[3] <= '9') {

                    int val = ((s[1] - '0') * 100 +
                           (s[2] - '0') * 10 + (s[3] - '0'));

                    if (0 <= val && val <= 255) {

                        s += 3;
                        *p = val;
                        (*length)++;
                    } else {
                        return LDNS_STATUS_DDD_OVERFLOW;
                    }
                } else {


                    *p = *++s;
                    (*length)++;
                }
                break;
            case '\"':



                *p = *++s;
                (*length)++;

                if ( *s == '\0' ) {

                    *p = '\0';
      return LDNS_STATUS_OK;
                }
                break;
            default:
                *p = *s;
                (*length)++;
                break;
        }
    }
    *p = '\0';
    return LDNS_STATUS_OK;
}
