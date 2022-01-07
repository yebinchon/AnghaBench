
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int hash ;
 char* onoff (int) ;
 int printf (char*,...) ;

void
sethash(int argc, char **argv)
{

 hash = !hash;
 printf("Hash mark printing %s", onoff(hash));
 code = hash;
 if (hash)
  printf(" (%d bytes/hash mark)", 1024);
 printf(".\n");
}
