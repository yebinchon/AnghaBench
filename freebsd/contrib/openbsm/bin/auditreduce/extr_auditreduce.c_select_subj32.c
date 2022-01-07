
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int pid; int ruid; int rgid; int egid; int euid; int auid; } ;
struct TYPE_6__ {TYPE_1__ subj32; } ;
struct TYPE_7__ {TYPE_2__ tt; } ;
typedef TYPE_3__ tokenstr_t ;


 int OPT_e ;
 int OPT_f ;
 int OPT_g ;
 int OPT_j ;
 int OPT_r ;
 int OPT_u ;
 int SETOPT (int ,int) ;
 int select_auid (int ) ;
 int select_egid (int ) ;
 int select_euid (int ) ;
 int select_rgid (int ) ;
 int select_ruid (int ) ;
 int select_subid (int ) ;

__attribute__((used)) static int
select_subj32(tokenstr_t tok, uint32_t *optchkd)
{

 SETOPT((*optchkd), (OPT_u | OPT_e | OPT_f | OPT_g | OPT_r | OPT_j));

 if (!select_auid(tok.tt.subj32.auid))
  return (0);
 if (!select_euid(tok.tt.subj32.euid))
  return (0);
 if (!select_egid(tok.tt.subj32.egid))
  return (0);
 if (!select_rgid(tok.tt.subj32.rgid))
  return (0);
 if (!select_ruid(tok.tt.subj32.ruid))
  return (0);
 if (!select_subid(tok.tt.subj32.pid))
  return (0);
 return (1);
}
