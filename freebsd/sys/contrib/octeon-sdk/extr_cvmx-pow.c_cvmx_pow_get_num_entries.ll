; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.c_cvmx_pow_get_num_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.c_cvmx_pow_get_num_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN30XX = common dso_local global i32 0, align 4
@OCTEON_CN31XX = common dso_local global i32 0, align 4
@OCTEON_CN50XX = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@OCTEON_CN61XX = common dso_local global i32 0, align 4
@OCTEON_CNF71XX = common dso_local global i32 0, align 4
@OCTEON_CN63XX = common dso_local global i32 0, align 4
@OCTEON_CN66XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_pow_get_num_entries() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @OCTEON_CN30XX, align 4
  %3 = call i64 @OCTEON_IS_MODEL(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 64, i32* %1, align 4
  br label %38

6:                                                ; preds = %0
  %7 = load i32, i32* @OCTEON_CN31XX, align 4
  %8 = call i64 @OCTEON_IS_MODEL(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @OCTEON_CN50XX, align 4
  %12 = call i64 @OCTEON_IS_MODEL(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6
  store i32 256, i32* %1, align 4
  br label %38

15:                                               ; preds = %10
  %16 = load i32, i32* @OCTEON_CN52XX, align 4
  %17 = call i64 @OCTEON_IS_MODEL(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @OCTEON_CN61XX, align 4
  %21 = call i64 @OCTEON_IS_MODEL(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @OCTEON_CNF71XX, align 4
  %25 = call i64 @OCTEON_IS_MODEL(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %15
  store i32 512, i32* %1, align 4
  br label %38

28:                                               ; preds = %23
  %29 = load i32, i32* @OCTEON_CN63XX, align 4
  %30 = call i64 @OCTEON_IS_MODEL(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @OCTEON_CN66XX, align 4
  %34 = call i64 @OCTEON_IS_MODEL(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28
  store i32 1024, i32* %1, align 4
  br label %38

37:                                               ; preds = %32
  store i32 2048, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %36, %27, %14, %5
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
