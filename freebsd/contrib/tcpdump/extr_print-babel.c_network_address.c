
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int network_prefix (int,int,int ,unsigned char const*,int *,unsigned int,unsigned char*) ;

__attribute__((used)) static int
network_address(int ae, const unsigned char *a, unsigned int len,
                unsigned char *a_r)
{
    return network_prefix(ae, -1, 0, a, ((void*)0), len, a_r);
}
