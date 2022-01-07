
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sadb_x_sa_replay {int sadb_x_sa_replay_replay; int sadb_x_sa_replay_exttype; int sadb_x_sa_replay_len; } ;
typedef scalar_t__ caddr_t ;


 int PFKEY_UNIT64 (int) ;
 int SADB_X_EXT_SA_REPLAY ;
 int memset (struct sadb_x_sa_replay*,int ,int) ;

__attribute__((used)) static caddr_t
pfkey_setsadbxreplay(caddr_t buf, caddr_t lim, uint32_t wsize)
{
 struct sadb_x_sa_replay *p;
 u_int len;

 p = (struct sadb_x_sa_replay *)buf;
 len = sizeof(struct sadb_x_sa_replay);

 if (buf + len > lim)
  return (((void*)0));

 memset(p, 0, len);
 p->sadb_x_sa_replay_len = PFKEY_UNIT64(len);
 p->sadb_x_sa_replay_exttype = SADB_X_EXT_SA_REPLAY;

 p->sadb_x_sa_replay_replay = wsize << 3;

 return (buf + len);
}
