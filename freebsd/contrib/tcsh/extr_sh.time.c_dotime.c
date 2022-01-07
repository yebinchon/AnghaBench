
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeval_t ;
typedef int time_t ;
struct tms {scalar_t__ tms_cutime; scalar_t__ tms_cstime; int tms_utime; int tms_stime; } ;
struct sysrusage {scalar_t__ tms_cutime; scalar_t__ tms_cstime; int tms_utime; int tms_stime; } ;
struct rusage {int dummy; } ;
struct process_stats {scalar_t__ tms_cutime; scalar_t__ tms_cstime; int tms_utime; int tms_stime; } ;
typedef int * command ;
typedef int ruch ;
typedef int ru1 ;
typedef int * clock_t ;
typedef int Char ;


 int PS_SELF ;
 int RUSAGE_CHILDREN ;
 int RUSAGE_SELF ;
 int USE (int **) ;
 int get_process_stats (int *,int ,struct tms*,struct tms*) ;
 int getrusage (int ,struct rusage*) ;
 int gettimeofday (int *,int *) ;
 int memset (struct tms*,int ,int) ;
 int prusage (int *,struct tms*,int *,int ****) ;
 int ru0 ;
 int ruadd (struct tms*,struct tms*) ;
 int **** time0 ;
 int * times (struct tms*) ;
 int times0 ;

void
dotime(Char **v, struct command *c)
{
    time_t timedol;




    struct tms times_dol;

    timedol = times(&times_dol);
    times_dol.tms_stime += times_dol.tms_cstime;
    times_dol.tms_utime += times_dol.tms_cutime;
    times_dol.tms_cstime = 0;
    times_dol.tms_cutime = 0;
    prusage(&times0, &times_dol, timedol, time0);


    USE(c);
    USE(v);
}
