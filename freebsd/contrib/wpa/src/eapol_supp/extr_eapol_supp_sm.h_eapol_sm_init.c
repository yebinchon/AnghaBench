
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int dummy; } ;
struct eapol_ctx {int dummy; } ;


 int free (struct eapol_ctx*) ;

__attribute__((used)) static inline struct eapol_sm *eapol_sm_init(struct eapol_ctx *ctx)
{
 free(ctx);
 return (struct eapol_sm *) 1;
}
