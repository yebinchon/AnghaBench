; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_collect_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_collect_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }

@SIGCHLD = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@child_terminated = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Received SIGCHLD.\00", align 1
@WNOHANG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*)* @collect_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_children(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  %7 = call i32 @sigemptyset(i32* %5)
  %8 = load i32, i32* @SIGCHLD, align 4
  %9 = call i32 @sigaddset(i32* %5, i32 %8)
  %10 = load i32, i32* @SIG_BLOCK, align 4
  %11 = call i32 @sigprocmask(i32 %10, i32* %5, i32* %4)
  %12 = load i64, i64* @child_terminated, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = call i32 @debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %39, %14
  %17 = load i32, i32* @WNOHANG, align 4
  %18 = call i64 @waitpid(i32 -1, i32* %6, i32 %17)
  store i64 %18, i64* %3, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EINTR, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  br label %29

29:                                               ; preds = %27, %16
  %30 = phi i1 [ true, %16 ], [ %28, %27 ]
  br i1 %30, label %31, label %40

31:                                               ; preds = %29
  %32 = load i64, i64* %3, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.ssh*, %struct.ssh** %2, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @session_close_by_pid(%struct.ssh* %35, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %31
  br label %16

40:                                               ; preds = %29
  store i64 0, i64* @child_terminated, align 8
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* @SIG_SETMASK, align 4
  %43 = call i32 @sigprocmask(i32 %42, i32* %4, i32* null)
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @session_close_by_pid(%struct.ssh*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
