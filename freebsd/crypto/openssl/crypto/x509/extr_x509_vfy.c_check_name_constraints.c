
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int error; TYPE_1__* param; int chain; } ;
typedef TYPE_2__ X509_STORE_CTX ;
typedef int X509_NAME_ENTRY ;
typedef int X509_NAME ;
struct TYPE_15__ {int ex_flags; int * nc; } ;
typedef TYPE_3__ X509 ;
struct TYPE_13__ {int hostflags; } ;
typedef int NAME_CONSTRAINTS ;


 int ERR_R_MALLOC_FAILURE ;
 int EXFLAG_PROXY ;
 int EXFLAG_SI ;
 int GEN_DNS ;
 int NAME_CONSTRAINTS_check (TYPE_3__*,int *) ;
 int NAME_CONSTRAINTS_check_CN (TYPE_3__*,int *) ;
 int NID_commonName ;
 int OBJ_obj2nid (int ) ;
 int X509_CHECK_FLAG_ALWAYS_CHECK_SUBJECT ;
 int X509_CHECK_FLAG_NEVER_CHECK_SUBJECT ;
 int X509_F_CHECK_NAME_CONSTRAINTS ;
 int X509_NAME_ENTRY_free (int *) ;
 int X509_NAME_ENTRY_get_object (int *) ;
 scalar_t__ X509_NAME_ENTRY_set (int ) ;
 scalar_t__ X509_NAME_cmp (int *,int *) ;
 int * X509_NAME_delete_entry (int *,int) ;
 int * X509_NAME_dup (int *) ;
 int X509_NAME_entry_count (int *) ;
 int X509_NAME_free (int *) ;
 int X509_NAME_get_entry (int *,int) ;

 int X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION ;

 int * X509_get_issuer_name (TYPE_3__*) ;
 int * X509_get_subject_name (TYPE_3__*) ;
 int X509err (int ,int ) ;
 int has_san_id (TYPE_3__*,int ) ;
 int sk_X509_num (int ) ;
 TYPE_3__* sk_X509_value (int ,int) ;
 int verify_cb_cert (TYPE_2__*,TYPE_3__*,int,int) ;

__attribute__((used)) static int check_name_constraints(X509_STORE_CTX *ctx)
{
    int i;


    for (i = sk_X509_num(ctx->chain) - 1; i >= 0; i--) {
        X509 *x = sk_X509_value(ctx->chain, i);
        int j;


        if (i && (x->ex_flags & EXFLAG_SI))
            continue;







        if (x->ex_flags & EXFLAG_PROXY) {
            X509_NAME *tmpsubject = X509_get_subject_name(x);
            X509_NAME *tmpissuer = X509_get_issuer_name(x);
            X509_NAME_ENTRY *tmpentry = ((void*)0);
            int last_object_nid = 0;
            int err = 128;
            int last_object_loc = X509_NAME_entry_count(tmpsubject) - 1;


            if (last_object_loc < 1) {
                err = X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION;
                goto proxy_name_done;
            }





            if (X509_NAME_entry_count(tmpsubject)
                != X509_NAME_entry_count(tmpissuer) + 1) {
                err = X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION;
                goto proxy_name_done;
            }





            if (X509_NAME_ENTRY_set(X509_NAME_get_entry(tmpsubject,
                                                        last_object_loc))
                == X509_NAME_ENTRY_set(X509_NAME_get_entry(tmpsubject,
                                                           last_object_loc - 1))) {
                err = X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION;
                goto proxy_name_done;
            }





            tmpsubject = X509_NAME_dup(tmpsubject);
            if (tmpsubject == ((void*)0)) {
                X509err(X509_F_CHECK_NAME_CONSTRAINTS, ERR_R_MALLOC_FAILURE);
                ctx->error = 129;
                return 0;
            }

            tmpentry =
                X509_NAME_delete_entry(tmpsubject, last_object_loc);
            last_object_nid =
                OBJ_obj2nid(X509_NAME_ENTRY_get_object(tmpentry));

            if (last_object_nid != NID_commonName
                || X509_NAME_cmp(tmpsubject, tmpissuer) != 0) {
                err = X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION;
            }

            X509_NAME_ENTRY_free(tmpentry);
            X509_NAME_free(tmpsubject);

         proxy_name_done:
            if (err != 128
                && !verify_cb_cert(ctx, x, i, err))
                return 0;
        }







        for (j = sk_X509_num(ctx->chain) - 1; j > i; j--) {
            NAME_CONSTRAINTS *nc = sk_X509_value(ctx->chain, j)->nc;

            if (nc) {
                int rv = NAME_CONSTRAINTS_check(x, nc);


                if (rv == 128 && i == 0
                    && (ctx->param->hostflags
                        & X509_CHECK_FLAG_NEVER_CHECK_SUBJECT) == 0
                    && ((ctx->param->hostflags
                         & X509_CHECK_FLAG_ALWAYS_CHECK_SUBJECT) != 0
                        || !has_san_id(x, GEN_DNS)))
                    rv = NAME_CONSTRAINTS_check_CN(x, nc);

                switch (rv) {
                case 128:
                    break;
                case 129:
                    return 0;
                default:
                    if (!verify_cb_cert(ctx, x, i, rv))
                        return 0;
                    break;
                }
            }
        }
    }
    return 1;
}
