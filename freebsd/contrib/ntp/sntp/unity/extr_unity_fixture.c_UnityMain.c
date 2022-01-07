
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int RepeatCount; } ;


 int UNITY_OUTPUT_CHAR (char) ;
 int UnityBegin (char const*) ;
 int UnityEnd () ;
 int UnityFailureCount () ;
 TYPE_1__ UnityFixture ;
 int UnityGetCommandLineOptions (int,char const**) ;
 int announceTestRun (unsigned int) ;

int UnityMain(int argc, const char* argv[], void (*runAllTests)(void))
{
    int result = UnityGetCommandLineOptions(argc, argv);
    unsigned int r;
    if (result != 0)
        return result;

    for (r = 0; r < UnityFixture.RepeatCount; r++)
    {
        UnityBegin(argv[0]);
        announceTestRun(r);
        runAllTests();
        UNITY_OUTPUT_CHAR('\n');
        UnityEnd();
    }

    return UnityFailureCount();
}
