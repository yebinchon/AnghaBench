; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_parse-duration.c_scale_n_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_parse-duration.c_scale_n_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BAD_TIME = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MAX_DURATION = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @scale_n_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scale_n_add(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @BAD_TIME, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i64, i64* @errno, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i64, i64* @EINVAL, align 8
  store i64 %15, i64* @errno, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i64, i64* @BAD_TIME, align 8
  store i64 %17, i64* %4, align 8
  br label %46

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @MAX_DURATION, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = icmp sgt i64 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i64, i64* @ERANGE, align 8
  store i64 %26, i64* @errno, align 8
  %27 = load i64, i64* @BAD_TIME, align 8
  store i64 %27, i64* %4, align 8
  br label %46

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %6, align 8
  %32 = mul nsw i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* @MAX_DURATION, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %6, align 8
  %37 = sub nsw i64 %35, %36
  %38 = icmp sgt i64 %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i64, i64* @ERANGE, align 8
  store i64 %40, i64* @errno, align 8
  %41 = load i64, i64* @BAD_TIME, align 8
  store i64 %41, i64* %4, align 8
  br label %46

42:                                               ; preds = %28
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %42, %39, %25, %16
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
