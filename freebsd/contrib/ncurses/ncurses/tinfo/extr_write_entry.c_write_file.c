
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int TERMTYPE ;
typedef int FILE ;


 int DEBUG (int,char*) ;
 scalar_t__ ERR ;
 int MAX_ENTRY_SIZE ;
 int W_OK ;
 scalar_t__ _nc_access (char*,int ) ;
 int _nc_syserr_abort (char*,int ,char*) ;
 int _nc_tic_dir (int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 unsigned int fwrite (char*,int,size_t,int *) ;
 int perror (char*) ;
 scalar_t__ write_object (int *,char*,unsigned int*,unsigned int) ;

__attribute__((used)) static void
write_file(char *filename, TERMTYPE *tp)
{
    char buffer[MAX_ENTRY_SIZE];
    unsigned limit = sizeof(buffer);
    unsigned offset = 0;

    FILE *fp = (_nc_access(filename, W_OK) == 0) ? fopen(filename, "wb") : 0;
    if (fp == 0) {
 perror(filename);
 _nc_syserr_abort("can't open %s/%s", _nc_tic_dir(0), filename);
    }
    DEBUG(1, ("Created %s", filename));

    if (write_object(tp, buffer, &offset, limit) == ERR
 || fwrite(buffer, sizeof(char), (size_t) offset, fp) != offset) {
 _nc_syserr_abort("error writing %s/%s", _nc_tic_dir(0), filename);
    }

    fclose(fp);
}
