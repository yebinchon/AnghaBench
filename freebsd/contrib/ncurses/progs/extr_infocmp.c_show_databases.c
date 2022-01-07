
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBDIRS ;


 int _nc_first_db (int *,int*) ;
 int _nc_last_db () ;
 char* _nc_next_db (int *,int*) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void
show_databases(void)
{
    DBDIRS state;
    int offset;
    const char *path2;

    _nc_first_db(&state, &offset);
    while ((path2 = _nc_next_db(&state, &offset)) != 0) {
 printf("%s\n", path2);
    }
    _nc_last_db();
}
