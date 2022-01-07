
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ino_t ;


 int fileerror (int ,int ,char const*) ;

void
direrror(ino_t ino, const char *errmesg)
{

 fileerror(ino, ino, errmesg);
}
