
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FILE ;


 int PACKETSZ ;
 int const* p_cdnname (int const*,int const*,int ,int *) ;

const u_char *
p_cdname(const u_char *cp, const u_char *msg, FILE *file) {
 return (p_cdnname(cp, msg, PACKETSZ, file));
}
