
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int __b64_ntop (int const*,int ,char*,size_t) ;

int
uuencode(const u_char *src, u_int srclength,
    char *target, size_t targsize)
{
 return __b64_ntop(src, srclength, target, targsize);
}
