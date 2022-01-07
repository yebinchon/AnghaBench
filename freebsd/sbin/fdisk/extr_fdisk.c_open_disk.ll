; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_open_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_open_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a_flag = common dso_local global i64 0, align 8
@I_flag = common dso_local global i64 0, align 8
@B_flag = common dso_local global i64 0, align 8
@disk = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"can't open device %s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"can't get disk parameters on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @open_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_disk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @a_flag, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @I_flag, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* @B_flag, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %10, %7, %1
  %17 = phi i1 [ true, %10 ], [ true, %7 ], [ true, %1 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @disk, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @g_open(i32 %19, i32 %20)
  store i32 %21, i32* @fd, align 4
  %22 = load i32, i32* @fd, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EPERM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @disk, align 4
  %33 = call i32 @g_open(i32 %32, i32 0)
  store i32 %33, i32* @fd, align 4
  br label %34

34:                                               ; preds = %31, %28, %24, %16
  %35 = load i32, i32* @fd, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ENXIO, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -2, i32* %2, align 4
  br label %56

42:                                               ; preds = %37, %34
  %43 = load i32, i32* @fd, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @disk, align 4
  %47 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 -1, i32* %2, align 4
  br label %56

48:                                               ; preds = %42
  %49 = call i32 (...) @get_params()
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @disk, align 4
  %53 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store i32 -1, i32* %2, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @fd, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %51, %45, %41
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @g_open(i32, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @get_params(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
