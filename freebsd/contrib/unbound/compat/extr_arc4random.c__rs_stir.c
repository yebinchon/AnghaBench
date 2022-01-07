
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int rnd ;
struct TYPE_4__ {int rs_count; scalar_t__ rs_have; } ;
struct TYPE_3__ {int rs_buf; } ;


 scalar_t__ ENOSYS ;
 int IVSZ ;
 int KEYSZ ;
 int SIGKILL ;
 int _rs_init (int *,int) ;
 int _rs_rekey (int *,int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int explicit_bzero (int *,int) ;
 int fallback_getentropy_urandom (int *,int) ;
 int getentropy (int *,int) ;
 int memset (int ,int ,int) ;
 int raise (int ) ;
 TYPE_2__* rs ;
 TYPE_1__* rsx ;

__attribute__((used)) static void
_rs_stir(void)
{
 u_char rnd[KEYSZ + IVSZ];

 if (getentropy(rnd, sizeof rnd) == -1) {
  if(errno != ENOSYS ||
   fallback_getentropy_urandom(rnd, sizeof rnd) == -1) {



   exit(9);

  }
 }

 if (!rs)
  _rs_init(rnd, sizeof(rnd));
 else
  _rs_rekey(rnd, sizeof(rnd));
 explicit_bzero(rnd, sizeof(rnd));


 rs->rs_have = 0;
 memset(rsx->rs_buf, 0, sizeof(rsx->rs_buf));

 rs->rs_count = 1600000;
}
