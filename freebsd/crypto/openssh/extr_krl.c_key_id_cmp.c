
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revoked_key_id {int key_id; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
key_id_cmp(struct revoked_key_id *a, struct revoked_key_id *b)
{
 return strcmp(a->key_id, b->key_id);
}
