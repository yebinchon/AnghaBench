
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDP_INFO ;
 int RDP_INFO_VECTOR_CATCH ;
 int send_rdp (char*,int ,int ,int) ;

__attribute__((used)) static void
rdp_catch_vectors (void)
{




  send_rdp ("bww-SZ", RDP_INFO, RDP_INFO_VECTOR_CATCH,
     (1 << 0) | (1 << 1) | (1 << 3) | (1 << 4) | (1 << 5)
    );
}
