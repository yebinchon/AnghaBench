; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_read_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_read_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fd = common dso_local global i32 0, align 4
@secsize = common dso_local global i32 0, align 4
@MIN_SEC_SIZE = common dso_local global i32 0, align 4
@MAX_SEC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @read_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_disk(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @fd, align 4
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 %8, 512
  %10 = call i32 @lseek(i32 %7, i32 %9, i32 0)
  %11 = load i32, i32* @secsize, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load i32, i32* @MIN_SEC_SIZE, align 4
  store i32 %14, i32* @secsize, align 4
  br label %15

15:                                               ; preds = %30, %13
  %16 = load i32, i32* @secsize, align 4
  %17 = load i32, i32* @MAX_SEC_SIZE, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i32, i32* @fd, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @secsize, align 4
  %23 = call i32 @read(i32 %20, i8* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @secsize, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @secsize, align 4
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* @secsize, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* @secsize, align 4
  br label %15

33:                                               ; preds = %15
  br label %39

34:                                               ; preds = %2
  %35 = load i32, i32* @fd, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @secsize, align 4
  %38 = call i32 @read(i32 %35, i8* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34, %27
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
