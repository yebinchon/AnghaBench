
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (scalar_t__) ;
 int free_namelist (int ) ;
 int namelst ;
 int perror (scalar_t__) ;
 int remove (scalar_t__) ;
 scalar_t__ tmp_fp ;
 scalar_t__ to_remove ;
 int unlink (scalar_t__) ;

__attribute__((used)) static void
cleanup(void)
{
    int rc;




    if (tmp_fp != 0)
 fclose(tmp_fp);
    if (to_remove != 0) {



 rc = unlink(to_remove);

 if (rc != 0)
     perror(to_remove);
    }
}
