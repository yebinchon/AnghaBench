; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_kill_args = type { i64, i32 }
%struct.kill_args = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_kill(%struct.thread* %0, %struct.linux_kill_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_kill_args*, align 8
  %6 = alloca %struct.kill_args, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_kill_args* %1, %struct.linux_kill_args** %5, align 8
  %7 = load %struct.linux_kill_args*, %struct.linux_kill_args** %5, align 8
  %8 = getelementptr inbounds %struct.linux_kill_args, %struct.linux_kill_args* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @LINUX_SIG_VALID(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.linux_kill_args*, %struct.linux_kill_args** %5, align 8
  %14 = getelementptr inbounds %struct.linux_kill_args, %struct.linux_kill_args* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %12, %2
  %20 = load %struct.linux_kill_args*, %struct.linux_kill_args** %5, align 8
  %21 = getelementptr inbounds %struct.linux_kill_args, %struct.linux_kill_args* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.linux_kill_args*, %struct.linux_kill_args** %5, align 8
  %26 = getelementptr inbounds %struct.linux_kill_args, %struct.linux_kill_args* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @linux_to_bsd_signal(i64 %27)
  %29 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %6, i32 0, i32 1
  store i64 %28, i64* %29, align 8
  br label %32

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %6, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %30, %24
  %33 = load %struct.linux_kill_args*, %struct.linux_kill_args** %5, align 8
  %34 = getelementptr inbounds %struct.linux_kill_args, %struct.linux_kill_args* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = call i32 @sys_kill(%struct.thread* %37, %struct.kill_args* %6)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @LINUX_SIG_VALID(i64) #1

declare dso_local i64 @linux_to_bsd_signal(i64) #1

declare dso_local i32 @sys_kill(%struct.thread*, %struct.kill_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
