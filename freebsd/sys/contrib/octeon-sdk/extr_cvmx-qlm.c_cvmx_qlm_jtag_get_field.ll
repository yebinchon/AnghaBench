; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-qlm.c_cvmx_qlm_jtag_get_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-qlm.c_cvmx_qlm_jtag_get_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN68XX = common dso_local global i32 0, align 4
@__cvmx_qlm_jtag_field_cn68xx = common dso_local global i32* null, align 8
@OCTEON_CN66XX = common dso_local global i32 0, align 4
@OCTEON_CN61XX = common dso_local global i32 0, align 4
@OCTEON_CNF71XX = common dso_local global i32 0, align 4
@__cvmx_qlm_jtag_field_cn66xx = common dso_local global i32* null, align 8
@OCTEON_CN63XX = common dso_local global i32 0, align 4
@__cvmx_qlm_jtag_field_cn63xx = common dso_local global i32* null, align 8
@OCTEON_CN56XX = common dso_local global i32 0, align 4
@__cvmx_qlm_jtag_field_cn56xx = common dso_local global i32* null, align 8
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@__cvmx_qlm_jtag_field_cn52xx = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cvmx_qlm_jtag_get_field() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @OCTEON_CN68XX, align 4
  %3 = call i64 @OCTEON_IS_MODEL(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32*, i32** @__cvmx_qlm_jtag_field_cn68xx, align 8
  store i32* %6, i32** %1, align 8
  br label %40

7:                                                ; preds = %0
  %8 = load i32, i32* @OCTEON_CN66XX, align 4
  %9 = call i64 @OCTEON_IS_MODEL(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* @OCTEON_CN61XX, align 4
  %13 = call i64 @OCTEON_IS_MODEL(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @OCTEON_CNF71XX, align 4
  %17 = call i64 @OCTEON_IS_MODEL(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %11, %7
  %20 = load i32*, i32** @__cvmx_qlm_jtag_field_cn66xx, align 8
  store i32* %20, i32** %1, align 8
  br label %40

21:                                               ; preds = %15
  %22 = load i32, i32* @OCTEON_CN63XX, align 4
  %23 = call i64 @OCTEON_IS_MODEL(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32*, i32** @__cvmx_qlm_jtag_field_cn63xx, align 8
  store i32* %26, i32** %1, align 8
  br label %40

27:                                               ; preds = %21
  %28 = load i32, i32* @OCTEON_CN56XX, align 4
  %29 = call i64 @OCTEON_IS_MODEL(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32*, i32** @__cvmx_qlm_jtag_field_cn56xx, align 8
  store i32* %32, i32** %1, align 8
  br label %40

33:                                               ; preds = %27
  %34 = load i32, i32* @OCTEON_CN52XX, align 4
  %35 = call i64 @OCTEON_IS_MODEL(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32*, i32** @__cvmx_qlm_jtag_field_cn52xx, align 8
  store i32* %38, i32** %1, align 8
  br label %40

39:                                               ; preds = %33
  store i32* null, i32** %1, align 8
  br label %40

40:                                               ; preds = %39, %37, %31, %25, %19, %5
  %41 = load i32*, i32** %1, align 8
  ret i32* %41
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
