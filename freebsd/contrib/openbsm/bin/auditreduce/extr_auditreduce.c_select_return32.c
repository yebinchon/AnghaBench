
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int e_type; } ;
struct TYPE_7__ {scalar_t__ status; } ;
struct TYPE_9__ {TYPE_2__ hdr32; TYPE_1__ ret32; } ;
struct TYPE_10__ {TYPE_3__ tt; } ;
typedef TYPE_4__ tokenstr_t ;


 int AU_PRS_FAILURE ;
 int AU_PRS_SUCCESS ;
 int AU_PRS_USECACHE ;
 scalar_t__ ISOPTSET (int ,int ) ;
 int OPT_c ;
 int SETOPT (int ,int ) ;
 int au_preselect (int ,int *,int,int ) ;
 int maskp ;
 int opttochk ;

__attribute__((used)) static int
select_return32(tokenstr_t tok_ret32, tokenstr_t tok_hdr32, uint32_t *optchkd)
{
 int sorf;

 SETOPT((*optchkd), (OPT_c));
 if (tok_ret32.tt.ret32.status == 0)
  sorf = AU_PRS_SUCCESS;
 else
  sorf = AU_PRS_FAILURE;
 if (ISOPTSET(opttochk, OPT_c)) {
  if (au_preselect(tok_hdr32.tt.hdr32.e_type, &maskp, sorf,
      AU_PRS_USECACHE) != 1)
   return (0);
 }
 return (1);
}
