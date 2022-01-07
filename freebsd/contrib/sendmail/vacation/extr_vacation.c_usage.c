
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int LOG_NOTICE ;
 int exit (int ) ;
 int getuid () ;
 int msglog (int ,char*,int ) ;

__attribute__((used)) static void
usage()
{
 msglog(LOG_NOTICE,
        "uid %u: usage: vacation [-a alias] [-C cfpath] [-d] [-f db] [-i] [-j] [-l] [-m msg] [-R returnaddr] [-r interval] [-s sender] [-t time] [-U] [-x] [-z] login\n",
        getuid());
 exit(EX_USAGE);
}
