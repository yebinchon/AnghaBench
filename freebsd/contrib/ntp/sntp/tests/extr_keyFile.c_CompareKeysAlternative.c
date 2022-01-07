
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int key_id; int key_len; int key_seq; int typen; } ;


 int CompareKeys (struct key,struct key) ;
 int memcpy (int ,char const*,int) ;
 int strlcpy (int ,char const*,int) ;

bool
CompareKeysAlternative(
 int key_id,
 int key_len,
 const char * type,
 const char * key_seq,
 struct key actual
 )
{
 struct key temp;

 temp.key_id = key_id;
 temp.key_len = key_len;
 strlcpy(temp.typen, type, sizeof(temp.typen));
 memcpy(temp.key_seq, key_seq, key_len);

 return CompareKeys(temp, actual);
}
