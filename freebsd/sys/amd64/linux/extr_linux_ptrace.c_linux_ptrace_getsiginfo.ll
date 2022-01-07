; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_linux_ptrace_getsiginfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_linux_ptrace_getsiginfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ptrace_lwpinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PT_LWPINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PT_LWPINFO failed with error %d\00", align 1
@PL_FLAG_SI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no PL_FLAG_SI, returning %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i64)* @linux_ptrace_getsiginfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ptrace_getsiginfo(%struct.thread* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ptrace_lwpinfo, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = load i32, i32* @PT_LWPINFO, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @kern_ptrace(%struct.thread* %12, i32 %13, i32 %14, %struct.ptrace_lwpinfo* %8, i32 8)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.thread*, %struct.thread** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @linux_msg(%struct.thread* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PL_FLAG_SI, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.thread*, %struct.thread** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @linux_msg(%struct.thread* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %47

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %8, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bsd_to_linux_signal(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %8, i32 0, i32 1
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @siginfo_to_lsiginfo(%struct.TYPE_2__* %40, i32* %9, i32 %41)
  %43 = load i64, i64* %7, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @copyout(i32* %9, i8* %44, i32 4)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %35, %29, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @kern_ptrace(%struct.thread*, i32, i32, %struct.ptrace_lwpinfo*, i32) #1

declare dso_local i32 @linux_msg(%struct.thread*, i8*, i32) #1

declare dso_local i32 @bsd_to_linux_signal(i32) #1

declare dso_local i32 @siginfo_to_lsiginfo(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
