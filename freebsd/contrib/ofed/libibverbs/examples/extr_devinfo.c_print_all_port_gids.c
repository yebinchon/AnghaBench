
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ibv_gid {int* raw; } ;
typedef int uint8_t ;
struct ibv_context {int dummy; } ;


 int fprintf (int ,char*,int,int) ;
 int ibv_query_gid (struct ibv_context*,int,int,union ibv_gid*) ;
 int null_gid (union ibv_gid*) ;
 int printf (char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int stderr ;

__attribute__((used)) static int print_all_port_gids(struct ibv_context *ctx, uint8_t port_num, int tbl_len)
{
 union ibv_gid gid;
 int rc = 0;
 int i;

 for (i = 0; i < tbl_len; i++) {
  rc = ibv_query_gid(ctx, port_num, i, &gid);
  if (rc) {
   fprintf(stderr, "Failed to query gid to port %d, index %d\n",
          port_num, i);
   return rc;
  }
  if (!null_gid(&gid))
   printf("\t\t\tGID[%3d]:\t\t%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x\n",
          i,
          gid.raw[ 0], gid.raw[ 1],
          gid.raw[ 2], gid.raw[ 3],
          gid.raw[ 4], gid.raw[ 5],
          gid.raw[ 6], gid.raw[ 7],
          gid.raw[ 8], gid.raw[ 9],
          gid.raw[10], gid.raw[11],
          gid.raw[12], gid.raw[13],
          gid.raw[14], gid.raw[15]);
 }
 return rc;
}
