
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUF_SIZE ;
 int _SC_NPROCESSORS_ONLN ;
 int atoi (char const* const) ;
 int fclose (int * const) ;
 int feof (int * const) ;
 scalar_t__ ferror (int * const) ;
 int * fgets (char*,int,int * const) ;
 int * fopen (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ sysconf (int ) ;

int UTIL_countPhysicalCores(void)
{
    static int numPhysicalCores = 0;

    if (numPhysicalCores != 0) return numPhysicalCores;

    numPhysicalCores = (int)sysconf(_SC_NPROCESSORS_ONLN);
    if (numPhysicalCores == -1) {

        return numPhysicalCores = 1;
    }


    { FILE* const cpuinfo = fopen("/proc/cpuinfo", "r");

        char buff[80];

        int siblings = 0;
        int cpu_cores = 0;
        int ratio = 1;

        if (cpuinfo == ((void*)0)) {

            return numPhysicalCores;
        }



        while (!feof(cpuinfo)) {
            if (fgets(buff, 80, cpuinfo) != ((void*)0)) {
                if (strncmp(buff, "siblings", 8) == 0) {
                    const char* const sep = strchr(buff, ':');
                    if (sep == ((void*)0) || *sep == '\0') {

                        goto failed;
                    }

                    siblings = atoi(sep + 1);
                }
                if (strncmp(buff, "cpu cores", 9) == 0) {
                    const char* const sep = strchr(buff, ':');
                    if (sep == ((void*)0) || *sep == '\0') {

                        goto failed;
                    }

                    cpu_cores = atoi(sep + 1);
                }
            } else if (ferror(cpuinfo)) {

                goto failed;
            }
        }
        if (siblings && cpu_cores) {
            ratio = siblings / cpu_cores;
        }
failed:
        fclose(cpuinfo);
        return numPhysicalCores = numPhysicalCores / ratio;
    }
}
