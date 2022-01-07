
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pjdlog_exitx (int,char*) ;

__attribute__((used)) static void
usage(void)
{

 pjdlog_exitx(1,
     "usage: decryptcore [-fLv] -p privatekeyfile -k keyfile -e encryptedcore -c core\n"
     "       decryptcore [-fLv] [-d crashdir] -p privatekeyfile -n dumpnr");
}
