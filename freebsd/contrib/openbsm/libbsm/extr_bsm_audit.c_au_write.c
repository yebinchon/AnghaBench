
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; } ;
typedef TYPE_1__ token_t ;
struct TYPE_7__ {scalar_t__ used; scalar_t__ len; int token_q; } ;
typedef TYPE_2__ au_record_t ;


 scalar_t__ AUDIT_TRAILER_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ MAX_AUDIT_RECORD_SIZE ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int errno ;
 TYPE_2__** open_desc_table ;
 int tokens ;

int
au_write(int d, token_t *tok)
{
 au_record_t *rec;

 if (tok == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }


 rec = open_desc_table[d];
 if ((rec == ((void*)0)) || (rec->used == 0)) {
  errno = EINVAL;
  return (-1);
 }

 if (rec->len + tok->len + AUDIT_TRAILER_SIZE > MAX_AUDIT_RECORD_SIZE) {
  errno = ENOMEM;
  return (-1);
 }






 TAILQ_INSERT_TAIL(&rec->token_q, tok, tokens);

 rec->len += tok->len;


 tok = ((void*)0);
 return (0);
}
