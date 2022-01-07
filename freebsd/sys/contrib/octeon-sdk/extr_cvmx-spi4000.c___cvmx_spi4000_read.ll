; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi4000.c___cvmx_spi4000_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi4000.c___cvmx_spi4000_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI4000_READ_ADDRESS_HIGH = common dso_local global i32 0, align 4
@SPI4000_DO_READ = common dso_local global i32 0, align 4
@SPI4000_GET_READ_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SPI4000: read failed with %d\0A\00", align 1
@SPI4000_READ_DATA0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @__cvmx_spi4000_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_spi4000_read(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @SPI4000_TWSI_ID(i32 %8)
  %10 = load i32, i32* @SPI4000_READ_ADDRESS_HIGH, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @cvmx_twsix_write_ia(i32 0, i32 %9, i32 %10, i32 2, i32 1, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @SPI4000_TWSI_ID(i32 %13)
  %15 = load i32, i32* @SPI4000_DO_READ, align 4
  %16 = call i32 @cvmx_twsi_read8(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %25, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 255
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ true, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @SPI4000_TWSI_ID(i32 %26)
  %28 = load i32, i32* @SPI4000_GET_READ_STATUS, align 4
  %29 = call i32 @cvmx_twsi_read8(i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %17

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %3, align 4
  br label %48

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @SPI4000_TWSI_ID(i32 %37)
  %39 = load i32, i32* @SPI4000_READ_DATA0, align 4
  %40 = call i32 @cvmx_twsix_read_ia(i32 0, i32 %38, i32 %39, i32 4, i32 1, i32* %7)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 4
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 0, i32* %3, align 4
  br label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %43, %33
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @cvmx_twsix_write_ia(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SPI4000_TWSI_ID(i32) #1

declare dso_local i32 @cvmx_twsi_read8(i32, i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @cvmx_twsix_read_ia(i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
