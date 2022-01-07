
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int authreadkeys (int *) ;
 int * key_file_name ;

void
rereadkeys(void)
{
 if (((void*)0) != key_file_name)
  authreadkeys(key_file_name);
}
