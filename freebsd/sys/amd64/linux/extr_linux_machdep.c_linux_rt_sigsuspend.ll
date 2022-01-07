; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_machdep.c_linux_rt_sigsuspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_machdep.c_linux_rt_sigsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_rt_sigsuspend_args = type { i32, i32 }

@rt_sigsuspend = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%p, %ld\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_rt_sigsuspend(%struct.thread* %0, %struct.linux_rt_sigsuspend_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_rt_sigsuspend_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_rt_sigsuspend_args* %1, %struct.linux_rt_sigsuspend_args** %5, align 8
  %9 = load i32, i32* @rt_sigsuspend, align 4
  %10 = load %struct.linux_rt_sigsuspend_args*, %struct.linux_rt_sigsuspend_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_rt_sigsuspend_args, %struct.linux_rt_sigsuspend_args* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.linux_rt_sigsuspend_args*, %struct.linux_rt_sigsuspend_args** %5, align 8
  %14 = getelementptr inbounds %struct.linux_rt_sigsuspend_args, %struct.linux_rt_sigsuspend_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @LINUX_CTR2(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.linux_rt_sigsuspend_args*, %struct.linux_rt_sigsuspend_args** %5, align 8
  %18 = getelementptr inbounds %struct.linux_rt_sigsuspend_args, %struct.linux_rt_sigsuspend_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.linux_rt_sigsuspend_args*, %struct.linux_rt_sigsuspend_args** %5, align 8
  %26 = getelementptr inbounds %struct.linux_rt_sigsuspend_args, %struct.linux_rt_sigsuspend_args* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @copyin(i32 %27, i32* %6, i32 4)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %24
  %34 = call i32 @linux_to_bsd_sigset(i32* %6, i32* %7)
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @kern_sigsuspend(%struct.thread* %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %31, %22
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @LINUX_CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @linux_to_bsd_sigset(i32*, i32*) #1

declare dso_local i32 @kern_sigsuspend(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
