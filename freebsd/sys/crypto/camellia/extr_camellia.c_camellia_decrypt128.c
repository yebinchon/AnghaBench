
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CAMELLIA_FLS (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int CAMELLIA_ROUNDSM (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SUBL (int) ;
 int SUBR (int) ;

void
camellia_decrypt128(const uint32_t *subkey, uint32_t *io)
{
    uint32_t il,ir,t0,t1;


    io[0] ^= SUBL(24);
    io[1] ^= SUBR(24);


    CAMELLIA_ROUNDSM(io[0],io[1], SUBL(23),SUBR(23),
       io[2],io[3],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[2],io[3], SUBL(22),SUBR(22),
       io[0],io[1],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[0],io[1], SUBL(21),SUBR(21),
       io[2],io[3],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[2],io[3], SUBL(20),SUBR(20),
       io[0],io[1],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[0],io[1], SUBL(19),SUBR(19),
       io[2],io[3],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[2],io[3], SUBL(18),SUBR(18),
       io[0],io[1],il,ir,t0,t1);

    CAMELLIA_FLS(io[0],io[1],io[2],io[3],SUBL(17),SUBR(17),SUBL(16),SUBR(16),
   t0,t1,il,ir);

    CAMELLIA_ROUNDSM(io[0],io[1], SUBL(15),SUBR(15),
       io[2],io[3],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[2],io[3], SUBL(14),SUBR(14),
       io[0],io[1],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[0],io[1], SUBL(13),SUBR(13),
       io[2],io[3],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[2],io[3], SUBL(12),SUBR(12),
       io[0],io[1],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[0],io[1], SUBL(11),SUBR(11),
       io[2],io[3],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[2],io[3], SUBL(10),SUBR(10),
       io[0],io[1],il,ir,t0,t1);

    CAMELLIA_FLS(io[0],io[1],io[2],io[3], SUBL(9),SUBR(9), SUBL(8),SUBR(8),
   t0,t1,il,ir);

    CAMELLIA_ROUNDSM(io[0],io[1], SUBL(7),SUBR(7),
       io[2],io[3],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[2],io[3], SUBL(6),SUBR(6),
       io[0],io[1],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[0],io[1], SUBL(5),SUBR(5),
       io[2],io[3],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[2],io[3], SUBL(4),SUBR(4),
       io[0],io[1],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[0],io[1], SUBL(3),SUBR(3),
       io[2],io[3],il,ir,t0,t1);
    CAMELLIA_ROUNDSM(io[2],io[3], SUBL(2),SUBR(2),
       io[0],io[1],il,ir,t0,t1);


    io[2] ^= SUBL(0);
    io[3] ^= SUBR(0);

    t0 = io[0];
    t1 = io[1];
    io[0] = io[2];
    io[1] = io[3];
    io[2] = t0;
    io[3] = t1;
}
