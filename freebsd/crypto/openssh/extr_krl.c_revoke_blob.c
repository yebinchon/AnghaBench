
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revoked_blob {size_t len; struct revoked_blob* blob; } ;
typedef struct revoked_blob u_char ;
struct revoked_blob_tree {int dummy; } ;


 struct revoked_blob* RB_INSERT (int ,struct revoked_blob_tree*,struct revoked_blob*) ;
 int SSH_ERR_ALLOC_FAIL ;
 struct revoked_blob* calloc (int,int) ;
 int free (struct revoked_blob*) ;
 int revoked_blob_tree ;

__attribute__((used)) static int
revoke_blob(struct revoked_blob_tree *rbt, u_char *blob, size_t len)
{
 struct revoked_blob *rb, *erb;

 if ((rb = calloc(1, sizeof(*rb))) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 rb->blob = blob;
 rb->len = len;
 erb = RB_INSERT(revoked_blob_tree, rbt, rb);
 if (erb != ((void*)0)) {
  free(rb->blob);
  free(rb);
 }
 return 0;
}
