; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1959 x i8] c"Available commands:\0Abye                                Quit sftp\0Acd path                            Change remote directory to 'path'\0Achgrp grp path                     Change group of file 'path' to 'grp'\0Achmod mode path                    Change permissions of file 'path' to 'mode'\0Achown own path                     Change owner of file 'path' to 'own'\0Adf [-hi] [path]                    Display statistics for current directory or\0A                                   filesystem containing 'path'\0Aexit                               Quit sftp\0Aget [-afPpRr] remote [local]       Download file\0Areget [-fPpRr] remote [local]      Resume download file\0Areput [-fPpRr] [local] remote      Resume upload file\0Ahelp                               Display this help text\0Alcd path                           Change local directory to 'path'\0Alls [ls-options [path]]            Display local directory listing\0Almkdir path                        Create local directory\0Aln [-s] oldpath newpath            Link remote file (-s for symlink)\0Alpwd                               Print local working directory\0Als [-1afhlnrSt] [path]             Display remote directory listing\0Alumask umask                       Set local umask to 'umask'\0Amkdir path                         Create remote directory\0Aprogress                           Toggle display of progress meter\0Aput [-afPpRr] local [remote]       Upload file\0Apwd                                Display remote working directory\0Aquit                               Quit sftp\0Arename oldpath newpath             Rename remote file\0Arm path                            Delete remote file\0Armdir path                         Remove remote directory\0Asymlink oldpath newpath            Symlink remote file\0Aversion                            Show SFTP version\0A!command                           Execute 'command' in local shell\0A!                                  Escape to local shell\0A?                                  Synonym for help\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([1959 x i8], [1959 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
