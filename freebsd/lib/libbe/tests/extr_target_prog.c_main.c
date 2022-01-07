
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libbe_handle_t ;


 int atoi (char*) ;
 int be_create_depth (int *,char*,char*,int ) ;
 int * libbe_init (char*) ;
 int libbe_print_on_error (int *,int) ;

int main(int argc, char *argv[]) {

        libbe_handle_t *lbh;

 if (argc != 5)
  return -1;

        if ((lbh = libbe_init(argv[1])) == ((void*)0))
                return -1;

 libbe_print_on_error(lbh, 1);

 return (be_create_depth(lbh, argv[2], argv[3], atoi(argv[4])));
}
