; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_semop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_semop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_semop_args = type { i32, i64, i32 }
%struct.semop_args = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_semop(%struct.thread* %0, %struct.linux_semop_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_semop_args*, align 8
  %6 = alloca %struct.semop_args, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_semop_args* %1, %struct.linux_semop_args** %5, align 8
  %7 = load %struct.linux_semop_args*, %struct.linux_semop_args** %5, align 8
  %8 = getelementptr inbounds %struct.linux_semop_args, %struct.linux_semop_args* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.linux_semop_args*, %struct.linux_semop_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_semop_args, %struct.linux_semop_args* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %11
  %19 = load %struct.linux_semop_args*, %struct.linux_semop_args** %5, align 8
  %20 = getelementptr inbounds %struct.linux_semop_args, %struct.linux_semop_args* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.semop_args, %struct.semop_args* %6, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load %struct.linux_semop_args*, %struct.linux_semop_args** %5, align 8
  %24 = getelementptr inbounds %struct.linux_semop_args, %struct.linux_semop_args* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @PTRIN(i32 %25)
  %27 = getelementptr inbounds %struct.semop_args, %struct.semop_args* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.linux_semop_args*, %struct.linux_semop_args** %5, align 8
  %29 = getelementptr inbounds %struct.linux_semop_args, %struct.linux_semop_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.semop_args, %struct.semop_args* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = call i32 @sys_semop(%struct.thread* %32, %struct.semop_args* %6)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %18, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @PTRIN(i32) #1

declare dso_local i32 @sys_semop(%struct.thread*, %struct.semop_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
