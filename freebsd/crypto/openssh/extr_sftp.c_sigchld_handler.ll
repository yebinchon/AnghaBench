; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_sigchld_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_sigchld_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@__const.sigchld_handler.msg = private unnamed_addr constant [23 x i8] c"\0DConnection closed.  \0A\00", align 16
@sshpid = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sigchld_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigchld_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [23 x i8], align 16
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @errno, align 4
  store i32 %6, i32* %3, align 4
  %7 = bitcast [23 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.sigchld_handler.msg, i32 0, i32 0), i64 23, i1 false)
  br label %8

8:                                                ; preds = %19, %1
  %9 = load i32, i32* @sshpid, align 4
  %10 = load i32, i32* @WNOHANG, align 4
  %11 = call i32 @waitpid(i32 %9, i32* null, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* @errno, align 4
  %15 = load i32, i32* @EINTR, align 4
  %16 = icmp eq i32 %14, %15
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i1 [ false, %8 ], [ %16, %13 ]
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %8

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @sshpid, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @STDERR_FILENO, align 4
  %26 = getelementptr inbounds [23 x i8], [23 x i8]* %5, i64 0, i64 0
  %27 = call i32 @write(i32 %25, i8* %26, i32 22)
  store i32 -1, i32* @sshpid, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* @errno, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
