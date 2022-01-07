
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdu_t ;
struct TYPE_4__ {TYPE_2__* op; } ;
typedef TYPE_1__ isess_t ;
struct TYPE_5__ {char* tgtChapDigest; scalar_t__ initiatorName; scalar_t__ tgtChapName; } ;
typedef TYPE_2__ isc_opt_t ;


 int debug (int,char*,int,...) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 char* getkeyval (char*,int *) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int stderr ;
 int str2bin (char*,char**) ;
 scalar_t__ strcmp (char*,scalar_t__) ;

__attribute__((used)) static int
handleTgtResp(isess_t *sess, pdu_t *pp)
{
     isc_opt_t *op = sess->op;
     char *np, *rp, *d1, *d2;
     int res, l1, l2;

     res = -1;
     if(((np = getkeyval("CHAP_N=", pp)) == ((void*)0)) ||
 ((rp = getkeyval("CHAP_R=", pp)) == ((void*)0)))
   goto out;
     if(strcmp(np, op->tgtChapName? op->tgtChapName: op->initiatorName) != 0) {
   fprintf(stderr, "%s does not match\n", np);
   goto out;
     }
     l1 = str2bin(op->tgtChapDigest, &d1);
     l2 = str2bin(rp, &d2);

     debug(3, "l1=%d '%s' l2=%d '%s'", l1, op->tgtChapDigest, l2, rp);
     if(l1 == l2 && memcmp(d1, d2, l1) == 0)
 res = 0;
     if(l1)
   free(d1);
     if(l2)
   free(d2);
 out:
     free(op->tgtChapDigest);
     op->tgtChapDigest = ((void*)0);

     debug(3, "res=%d", res);

     return res;
}
