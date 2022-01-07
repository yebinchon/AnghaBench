
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int kvm_t ;
typedef int db_capture_inprogress ;
typedef int db_capture_bufsize ;
typedef int db_capture_bufoff ;


 int X_DB_CAPTURE_BUFOFF ;
 int X_DB_CAPTURE_BUFSIZE ;
 int X_DB_CAPTURE_INPROGRESS ;
 int err (int,char*) ;
 int errx (int,char*) ;
 scalar_t__ kread_symbol (int *,int ,int*,int,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ddb_capture_status_kvm(kvm_t *kvm)
{
 u_int db_capture_bufoff, db_capture_bufsize, db_capture_inprogress;

 if (kread_symbol(kvm, X_DB_CAPTURE_BUFOFF, &db_capture_bufoff,
     sizeof(db_capture_bufoff), 0) < 0)
  errx(-1, "kvm: unable to read db_capture_bufoff");
 if (kread_symbol(kvm, X_DB_CAPTURE_BUFSIZE, &db_capture_bufsize,
     sizeof(db_capture_bufsize), 0) < 0)
  errx(-1, "kvm: unable to read db_capture_bufsize");
 if (kread_symbol(kvm, X_DB_CAPTURE_INPROGRESS,
     &db_capture_inprogress, sizeof(db_capture_inprogress), 0) < 0)
  err(-1, "kvm: unable to read db_capture_inprogress");
 printf("%u/%u bytes used\n", db_capture_bufoff, db_capture_bufsize);
 if (db_capture_inprogress)
  printf("capture is on\n");
 else
  printf("capture is off\n");

}
