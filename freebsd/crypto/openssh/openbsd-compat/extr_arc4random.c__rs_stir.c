
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int rnd ;


 scalar_t__ ERR_get_error () ;
 int IVSZ ;
 int KEYSZ ;
 scalar_t__ RAND_bytes (int *,int) ;
 int RSBUFSZ ;
 int _rs_init (int *,int) ;
 int _rs_rekey (int *,int) ;
 int explicit_bzero (int *,int) ;
 int fatal (char*,unsigned long) ;
 int getrnd (int *,int) ;
 int memset (int ,int ,int ) ;
 int rs_buf ;
 int rs_count ;
 scalar_t__ rs_have ;
 int rs_initialized ;

__attribute__((used)) static void
_rs_stir(void)
{
 u_char rnd[KEYSZ + IVSZ];






 getrnd(rnd, sizeof(rnd));


 if (!rs_initialized) {
  rs_initialized = 1;
  _rs_init(rnd, sizeof(rnd));
 } else
  _rs_rekey(rnd, sizeof(rnd));
 explicit_bzero(rnd, sizeof(rnd));


 rs_have = 0;
 memset(rs_buf, 0, RSBUFSZ);

 rs_count = 1600000;
}
