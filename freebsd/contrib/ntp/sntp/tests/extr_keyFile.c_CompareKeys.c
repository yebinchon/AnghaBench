
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {scalar_t__ key_id; scalar_t__ key_len; char* typen; int key_seq; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ memcmp (int ,int ,int) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

bool
CompareKeys(
 struct key expected,
 struct key actual
 )
{
 if (expected.key_id != actual.key_id) {
  printf("Expected key_id: %d but was: %d\n",
         expected.key_id, actual.key_id);
  return FALSE;
 }
 if (expected.key_len != actual.key_len) {
  printf("Expected key_len: %d but was: %d\n",
         expected.key_len, actual.key_len);
  return FALSE;
 }
 if (strcmp(expected.typen, actual.typen) != 0) {
  printf("Expected key_type: %s but was: %s\n",
         expected.typen, actual.typen);
  return FALSE;

 }
 if (memcmp(expected.key_seq, actual.key_seq, expected.key_len) != 0) {
  printf("Key mismatch!\n");
  return FALSE;
 }
 return TRUE;
}
