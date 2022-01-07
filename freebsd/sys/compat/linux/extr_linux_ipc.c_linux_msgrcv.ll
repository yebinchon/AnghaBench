; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_msgrcv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_msgrcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.thread = type { i32 }
%struct.linux_msgrcv_args = type { i64, i32, i32, i32, i32 }

@msginfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_msgrcv(%struct.thread* %0, %struct.linux_msgrcv_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_msgrcv_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_msgrcv_args* %1, %struct.linux_msgrcv_args** %5, align 8
  %10 = load %struct.linux_msgrcv_args*, %struct.linux_msgrcv_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.linux_msgrcv_args*, %struct.linux_msgrcv_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msginfo, i32 0, i32 0), align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %14
  %23 = load %struct.linux_msgrcv_args*, %struct.linux_msgrcv_args** %5, align 8
  %24 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @PTRIN(i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  %28 = load %struct.linux_msgrcv_args*, %struct.linux_msgrcv_args** %5, align 8
  %29 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 8
  %33 = load %struct.linux_msgrcv_args*, %struct.linux_msgrcv_args** %5, align 8
  %34 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.linux_msgrcv_args*, %struct.linux_msgrcv_args** %5, align 8
  %37 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.linux_msgrcv_args*, %struct.linux_msgrcv_args** %5, align 8
  %40 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kern_msgrcv(%struct.thread* %27, i32 %30, i8* %32, i64 %35, i32 %38, i32 %41, i64* %7)
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %22
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %22
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %8, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @copyout(i64* %8, i8* %48, i32 8)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %44, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i8* @PTRIN(i32) #1

declare dso_local i32 @kern_msgrcv(%struct.thread*, i32, i8*, i64, i32, i32, i64*) #1

declare dso_local i32 @copyout(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
