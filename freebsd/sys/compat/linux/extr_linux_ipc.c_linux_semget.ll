; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_semget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_semget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_semget_args = type { i64, i32, i32 }
%struct.semget_args = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_semget(%struct.thread* %0, %struct.linux_semget_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_semget_args*, align 8
  %6 = alloca %struct.semget_args, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_semget_args* %1, %struct.linux_semget_args** %5, align 8
  %7 = load %struct.linux_semget_args*, %struct.linux_semget_args** %5, align 8
  %8 = getelementptr inbounds %struct.linux_semget_args, %struct.linux_semget_args* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.linux_semget_args*, %struct.linux_semget_args** %5, align 8
  %15 = getelementptr inbounds %struct.linux_semget_args, %struct.linux_semget_args* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.semget_args, %struct.semget_args* %6, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load %struct.linux_semget_args*, %struct.linux_semget_args** %5, align 8
  %19 = getelementptr inbounds %struct.linux_semget_args, %struct.linux_semget_args* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.semget_args, %struct.semget_args* %6, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load %struct.linux_semget_args*, %struct.linux_semget_args** %5, align 8
  %23 = getelementptr inbounds %struct.linux_semget_args, %struct.linux_semget_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.semget_args, %struct.semget_args* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = call i32 @sys_semget(%struct.thread* %26, %struct.semget_args* %6)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %13, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @sys_semget(%struct.thread*, %struct.semget_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
