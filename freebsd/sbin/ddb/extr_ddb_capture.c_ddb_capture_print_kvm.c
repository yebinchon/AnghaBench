
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* u_int ;
typedef int kvm_t ;
typedef int db_capture_bufoff ;
typedef int db_capture_buf ;


 int X_DB_CAPTURE_BUF ;
 int X_DB_CAPTURE_BUFOFF ;
 int bzero (char*,char*) ;
 int err (int,char*,char*) ;
 int errx (int,char*) ;
 int free (char*) ;
 scalar_t__ kread (int *,char*,char*,char*,int ) ;
 scalar_t__ kread_symbol (int *,int ,char**,int,int ) ;
 char* malloc (char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
ddb_capture_print_kvm(kvm_t *kvm)
{
 u_int db_capture_bufoff;
 char *buffer, *db_capture_buf;

 if (kread_symbol(kvm, X_DB_CAPTURE_BUF, &db_capture_buf,
     sizeof(db_capture_buf), 0) < 0)
  errx(-1, "kvm: unable to read db_capture_buf");

 if (kread_symbol(kvm, X_DB_CAPTURE_BUFOFF, &db_capture_bufoff,
     sizeof(db_capture_bufoff), 0) < 0)
  errx(-1, "kvm: unable to read db_capture_bufoff");

 buffer = malloc(db_capture_bufoff + 1);
 if (buffer == ((void*)0))
  err(-1, "malloc: db_capture_bufoff (%u)",
      db_capture_bufoff);
 bzero(buffer, db_capture_bufoff + 1);

 if (kread(kvm, db_capture_buf, buffer, db_capture_bufoff, 0) < 0)
  errx(-1, "kvm: unable to read buffer");

 printf("%s\n", buffer);
 free(buffer);
}
