
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usershell {int path; } ;


 int free (int ) ;

__attribute__((used)) static void
free_usershell(struct usershell *us)
{
 free(us->path);
}
