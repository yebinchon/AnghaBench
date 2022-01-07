
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct bfd_header_t {int dummy; } ;
struct bfd_auth_header_t {int auth_type; int auth_len; } ;
struct TYPE_5__ {int ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;



 int AUTH_MD5_FIELD_LEN ;
 int AUTH_MD5_HASH_LEN ;



 int AUTH_PASSWORD_FIELD_MAX_LEN ;
 int AUTH_PASSWORD_FIELD_MIN_LEN ;

 int AUTH_SHA1_FIELD_LEN ;
 int AUTH_SHA1_HASH_LEN ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct bfd_auth_header_t const) ;
 int ND_TCHECK2 (int const,int) ;
 int bfd_v1_authentication_values ;
 int fn_printn (TYPE_1__*,int const*,int ,int ) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static int
auth_print(netdissect_options *ndo, register const u_char *pptr)
{
        const struct bfd_auth_header_t *bfd_auth_header;
        int i;

        pptr += sizeof (const struct bfd_header_t);
        bfd_auth_header = (const struct bfd_auth_header_t *)pptr;
        ND_TCHECK(*bfd_auth_header);
        ND_PRINT((ndo, "\n\tAuthentication: %s (%u), length: %u",
                 tok2str(bfd_v1_authentication_values,"Unknown",bfd_auth_header->auth_type),
                 bfd_auth_header->auth_type,
                 bfd_auth_header->auth_len));
                pptr += 2;
                ND_PRINT((ndo, "\n\t  Auth Key ID: %d", *pptr));

        switch(bfd_auth_header->auth_type) {
            case 129:
                if (bfd_auth_header->auth_len < AUTH_PASSWORD_FIELD_MIN_LEN ||
                    bfd_auth_header->auth_len > AUTH_PASSWORD_FIELD_MAX_LEN) {
                    ND_PRINT((ndo, "[invalid length %d]",
                             bfd_auth_header->auth_len));
                    break;
                }
                pptr++;
                ND_PRINT((ndo, ", Password: "));

                if (fn_printn(ndo, pptr, bfd_auth_header->auth_len - 3,
                              ndo->ndo_snapend))
                    goto trunc;
                break;
            case 132:
            case 131:
                if (bfd_auth_header->auth_len != AUTH_MD5_FIELD_LEN) {
                    ND_PRINT((ndo, "[invalid length %d]",
                             bfd_auth_header->auth_len));
                    break;
                }
                pptr += 2;
                ND_TCHECK2(*pptr, 4);
                ND_PRINT((ndo, ", Sequence Number: 0x%08x", EXTRACT_32BITS(pptr)));
                pptr += 4;
                ND_TCHECK2(*pptr, AUTH_MD5_HASH_LEN);
                ND_PRINT((ndo, "\n\t  Digest: "));
                for(i = 0; i < AUTH_MD5_HASH_LEN; i++)
                    ND_PRINT((ndo, "%02x", pptr[i]));
                break;
            case 128:
            case 130:
                if (bfd_auth_header->auth_len != AUTH_SHA1_FIELD_LEN) {
                    ND_PRINT((ndo, "[invalid length %d]",
                             bfd_auth_header->auth_len));
                    break;
                }
                pptr += 2;
                ND_TCHECK2(*pptr, 4);
                ND_PRINT((ndo, ", Sequence Number: 0x%08x", EXTRACT_32BITS(pptr)));
                pptr += 4;
                ND_TCHECK2(*pptr, AUTH_SHA1_HASH_LEN);
                ND_PRINT((ndo, "\n\t  Hash: "));
                for(i = 0; i < AUTH_SHA1_HASH_LEN; i++)
                    ND_PRINT((ndo, "%02x", pptr[i]));
                break;
        }
        return 0;

trunc:
        return 1;
}
