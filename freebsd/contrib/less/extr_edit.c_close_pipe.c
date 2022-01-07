
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _pid; } ;
typedef TYPE_1__ FILE ;


 int SIGINT ;
 int kill (int ,int ) ;
 int pclose (TYPE_1__*) ;

__attribute__((used)) static void
close_pipe(FILE *pipefd)
{
 if (pipefd == ((void*)0))
  return;







 pclose(pipefd);
}
