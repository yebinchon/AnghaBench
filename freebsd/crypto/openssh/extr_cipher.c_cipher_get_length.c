
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct sshcipher_ctx {int cp_ctx; TYPE_1__* cipher; } ;
struct TYPE_2__ {int flags; } ;


 int CFLAG_CHACHAPOLY ;
 int PEEK_U32 (int const*) ;
 int SSH_ERR_MESSAGE_INCOMPLETE ;
 int chachapoly_get_length (int *,int*,int,int const*,int) ;

int
cipher_get_length(struct sshcipher_ctx *cc, u_int *plenp, u_int seqnr,
    const u_char *cp, u_int len)
{
 if ((cc->cipher->flags & CFLAG_CHACHAPOLY) != 0)
  return chachapoly_get_length(&cc->cp_ctx, plenp, seqnr,
      cp, len);
 if (len < 4)
  return SSH_ERR_MESSAGE_INCOMPLETE;
 *plenp = PEEK_U32(cp);
 return 0;
}
