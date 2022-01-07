; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_remap_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_remap_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i64 }

@LINUX_IOCTL_MIN_PTR = common dso_local global i64 0, align 8
@LINUX_IOCTL_MAX_PTR = common dso_local global i64 0, align 8
@current = common dso_local global %struct.task_struct* null, align 8
@IOCPARM_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64)* @linux_remap_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_remap_address(i8** %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.task_struct*, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @LINUX_IOCTL_MIN_PTR, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @LINUX_IOCTL_MAX_PTR, align 8
  %17 = icmp ult i64 %15, %16
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ false, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %18
  %24 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %24, %struct.task_struct** %7, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %26 = icmp eq %struct.task_struct* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8**, i8*** %4, align 8
  store i8* null, i8** %28, align 8
  store i32 1, i32* %3, align 4
  br label %56

29:                                               ; preds = %23
  %30 = load i64, i64* @LINUX_IOCTL_MIN_PTR, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @IOCPARM_MAX, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36, %29
  %45 = load i8**, i8*** %4, align 8
  store i8* null, i8** %45, align 8
  store i32 1, i32* %3, align 4
  br label %56

46:                                               ; preds = %36
  %47 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i8**, i8*** %4, align 8
  store i8* %53, i8** %54, align 8
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %46, %44, %27
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
