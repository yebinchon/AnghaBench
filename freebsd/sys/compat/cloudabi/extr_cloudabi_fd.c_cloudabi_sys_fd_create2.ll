; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_sys_fd_create2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_sys_fd_create2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.cloudabi_sys_fd_create2_args = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_fd_create2(%struct.thread* %0, %struct.cloudabi_sys_fd_create2_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_fd_create2_args*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_fd_create2_args* %1, %struct.cloudabi_sys_fd_create2_args** %5, align 8
  %9 = load %struct.cloudabi_sys_fd_create2_args*, %struct.cloudabi_sys_fd_create2_args** %5, align 8
  %10 = getelementptr inbounds %struct.cloudabi_sys_fd_create2_args, %struct.cloudabi_sys_fd_create2_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %16 [
    i32 129, label %12
    i32 128, label %14
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %13, i32* %8, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %15, i32* %8, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %14, %12
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = load i32, i32* @AF_UNIX, align 4
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %23 = call i32 @kern_socketpair(%struct.thread* %19, i32 %20, i32 %21, i32 0, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %26, %18
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @kern_socketpair(%struct.thread*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
