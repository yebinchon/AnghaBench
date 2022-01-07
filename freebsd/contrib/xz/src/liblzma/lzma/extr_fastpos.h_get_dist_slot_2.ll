; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_fastpos.h_get_dist_slot_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_fastpos.h_get_dist_slot_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FULL_DISTANCES = common dso_local global i64 0, align 8
@FULL_DISTANCES_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @get_dist_slot_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_dist_slot_2(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @FULL_DISTANCES, align 8
  %6 = icmp sge i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @FULL_DISTANCES_BITS, align 8
  %11 = sub nsw i64 %10, 1
  %12 = call i64 @fastpos_limit(i64 %11, i32 0)
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @FULL_DISTANCES_BITS, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call i64 @fastpos_result(i64 %15, i64 %17, i32 0)
  store i64 %18, i64* %2, align 8
  br label %35

19:                                               ; preds = %1
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @FULL_DISTANCES_BITS, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i64 @fastpos_limit(i64 %22, i32 1)
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @FULL_DISTANCES_BITS, align 8
  %28 = sub nsw i64 %27, 1
  %29 = call i64 @fastpos_result(i64 %26, i64 %28, i32 1)
  store i64 %29, i64* %2, align 8
  br label %35

30:                                               ; preds = %19
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @FULL_DISTANCES_BITS, align 8
  %33 = sub nsw i64 %32, 1
  %34 = call i64 @fastpos_result(i64 %31, i64 %33, i32 2)
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %30, %25, %14
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fastpos_limit(i64, i32) #1

declare dso_local i64 @fastpos_result(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
