
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;


 int BUFSIZ ;
 int _nc_STRCAT (char*,char*,int) ;
 int _nc_STRCPY (char*,char*,int) ;
 char* _nc_progname ;
 int exit_error () ;
 int perror (int ) ;
 int strlen (char*) ;
 int strncat (char*,char const*,int) ;

__attribute__((used)) static void
failed(const char *msg)
{
    char temp[BUFSIZ];
    size_t len = strlen(_nc_progname) + 2;

    if ((int) len < (int) sizeof(temp) - 12) {
 _nc_STRCPY(temp, _nc_progname, sizeof(temp));
 _nc_STRCAT(temp, ": ", sizeof(temp));
    } else {
 _nc_STRCPY(temp, "tset: ", sizeof(temp));
    }
    perror(strncat(temp, msg, sizeof(temp) - strlen(temp) - 2));
    exit_error();

}
