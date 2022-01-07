
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef void* u_int32_t ;


 int des_init () ;
 int des_initialised ;
 int do_des (void*,void*,void**,void**,int) ;
 void* htonl (void*) ;
 void* ntohl (void*) ;
 int setup_salt (int ) ;

__attribute__((used)) static int
des_cipher(const char *in, char *out, u_long salt, int count)
{
 u_int32_t l_out, r_out, rawl, rawr;
 int retval;
 union {
  u_int32_t *ui32;
  const char *c;
 } trans;

 if (!des_initialised)
  des_init();

 setup_salt(salt);

 trans.c = in;
 rawl = ntohl(*trans.ui32++);
 rawr = ntohl(*trans.ui32);

 retval = do_des(rawl, rawr, &l_out, &r_out, count);

 trans.c = out;
 *trans.ui32++ = htonl(l_out);
 *trans.ui32 = htonl(r_out);
 return(retval);
}
