; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_mytime.c_mytime_get_flush_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_mytime.c_mytime_get_flush_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_flush_timeout = common dso_local global i64 0, align 8
@opt_mode = common dso_local global i64 0, align 8
@MODE_COMPRESS = common dso_local global i64 0, align 8
@next_flush = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mytime_get_flush_timeout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @opt_flush_timeout, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* @opt_mode, align 8
  %8 = load i64, i64* @MODE_COMPRESS, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %0
  store i32 -1, i32* %1, align 4
  br label %33

11:                                               ; preds = %6
  %12 = call i64 (...) @mytime_now()
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @next_flush, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %33

17:                                               ; preds = %11
  %18 = load i64, i64* @next_flush, align 8
  %19 = load i64, i64* %2, align 8
  %20 = sub nsw i64 %18, %19
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @INT_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* @INT_MAX, align 8
  br label %30

26:                                               ; preds = %17
  %27 = load i64, i64* %3, align 8
  %28 = trunc i64 %27 to i32
  %29 = sext i32 %28 to i64
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i64 [ %25, %24 ], [ %29, %26 ]
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %30, %16, %10
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i64 @mytime_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
