
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static inline void
cip_print(netdissect_options *ndo, u_int length)
{



 ND_PRINT((ndo, "%u: ", length));
}
