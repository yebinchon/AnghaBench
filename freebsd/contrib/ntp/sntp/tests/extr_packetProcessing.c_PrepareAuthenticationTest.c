
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_3__ {int key_id; int key_len; int key_seq; int typen; int * next; } ;


 int ActivateOption (char*,char*) ;
 int TEST_ASSERT_TRUE (int) ;
 TYPE_1__* emalloc (int) ;
 int key_cnt ;
 TYPE_1__* key_ptr ;
 int memcpy (int ,void const*,int) ;
 int restoreKeyDb ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strlen (char const*) ;

void
PrepareAuthenticationTest(
 int key_id,
 int key_len,
 const char * type,
 const void * key_seq
 )
{
 char str[25];
 snprintf(str, 25, "%d", key_id);
 ActivateOption("-a", str);

 key_cnt = 1;
 key_ptr = emalloc(sizeof(struct key));
 key_ptr->next = ((void*)0);
 key_ptr->key_id = key_id;
 key_ptr->key_len = key_len;
 memcpy(key_ptr->typen, type, strlen(type) + 1);

 TEST_ASSERT_TRUE(key_len < sizeof(key_ptr->key_seq));

 memcpy(key_ptr->key_seq, key_seq, key_ptr->key_len);
 restoreKeyDb = 1;
}
