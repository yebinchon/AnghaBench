
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CONTROL (char) ;
 int ClearArray (int ) ;
 scalar_t__ ISend ;
 int SB_CLEAR () ;
 scalar_t__ SYNCHing ;
 int TS_DATA ;
 int _POSIX_VDISABLE ;
 int auth_encrypt_connect (scalar_t__) ;
 scalar_t__ connected ;
 scalar_t__ donebinarytoggle ;
 void* echoc ;
 int env_init () ;
 void* escape ;
 int flushline ;
 scalar_t__ localflow ;
 int options ;
 int restartany ;
 int rlogin ;
 int telrcv_state ;

void
init_telnet(void)
{
    env_init();

    SB_CLEAR();
    ClearArray(options);

    connected = ISend = localflow = donebinarytoggle = 0;





    restartany = -1;

    SYNCHing = 0;



    escape = CONTROL(']');
    rlogin = _POSIX_VDISABLE;




    flushline = 1;
    telrcv_state = TS_DATA;
}
