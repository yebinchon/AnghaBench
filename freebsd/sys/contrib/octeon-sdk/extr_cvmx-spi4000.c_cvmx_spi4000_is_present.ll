; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi4000.c_cvmx_spi4000_is_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi4000.c_cvmx_spi4000_is_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@SPI4000_WRITE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@SPI4000_WRITE_ADDRESS_LOW = common dso_local global i32 0, align 4
@interface_is_spi4000 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi4000_is_present(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @OCTEON_CN38XX, align 4
  %5 = call i64 @OCTEON_IS_MODEL(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @OCTEON_CN58XX, align 4
  %9 = call i64 @OCTEON_IS_MODEL(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %31

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @SPI4000_TWSI_ID(i32 %13)
  %15 = load i32, i32* @SPI4000_WRITE_ADDRESS_HIGH, align 4
  %16 = call i64 @cvmx_twsi_write8(i32 %14, i32 %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %31

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @SPI4000_TWSI_ID(i32 %20)
  %22 = load i32, i32* @SPI4000_WRITE_ADDRESS_LOW, align 4
  %23 = call i64 @cvmx_twsi_write8(i32 %21, i32 %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %31

26:                                               ; preds = %19
  %27 = load i32*, i32** @interface_is_spi4000, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 1, i32* %30, align 4
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %25, %18, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i64 @cvmx_twsi_write8(i32, i32, i32) #1

declare dso_local i32 @SPI4000_TWSI_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
