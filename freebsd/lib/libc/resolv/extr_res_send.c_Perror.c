
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* res_state ;
struct TYPE_3__ {unsigned int options; } ;
typedef int FILE ;


 unsigned int RES_DEBUG ;
 int errno ;
 int fprintf (int *,char*,char const*,char*) ;
 char* strerror (int) ;

__attribute__((used)) static void
Perror(const res_state statp, FILE *file, const char *string, int error) {
 int save = errno;

 if ((statp->options & RES_DEBUG) != 0U)
  fprintf(file, "res_send: %s: %s\n",
   string, strerror(error));
 errno = save;
}
