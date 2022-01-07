; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi4000.c___cvmx_spi4000_configure_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi4000.c___cvmx_spi4000_configure_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_HELPER_DISABLE_SPI4000_BACKPRESSURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__cvmx_spi4000_configure_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_spi4000_configure_mac(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @__cvmx_spi4000_write(i32 %5, i32 1285, i32 1023)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @__cvmx_spi4000_write(i32 %7, i32 1568, i32 1023)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @__cvmx_spi4000_write(i32 %9, i32 1438, i32 1023)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @__cvmx_spi4000_write(i32 %11, i32 1285, i32 0)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @__cvmx_spi4000_write(i32 %13, i32 1280, i32 0)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %61, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %64

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %19, 7
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, 16
  %24 = call i32 @__cvmx_spi4000_write(i32 %21, i32 %23, i32 3)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, 15
  %28 = call i32 @__cvmx_spi4000_write(i32 %25, i32 %27, i32 16383)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @__cvmx_spi4000_write(i32 %29, i32 %30, i32 0)
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, 1
  %35 = call i32 @__cvmx_spi4000_write(i32 %32, i32 %34, i32 0)
  %36 = load i64, i64* @CVMX_HELPER_DISABLE_SPI4000_BACKPRESSURE, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, 18
  %42 = call i32 @__cvmx_spi4000_write(i32 %39, i32 %41, i32 0)
  br label %48

43:                                               ; preds = %18
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, 18
  %47 = call i32 @__cvmx_spi4000_write(i32 %44, i32 %46, i32 7)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, 21
  %52 = call i32 @__cvmx_spi4000_write(i32 %49, i32 %51, i32 1)
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, 24
  %56 = call i32 @__cvmx_spi4000_write(i32 %53, i32 %55, i32 4557)
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, 25
  %60 = call i32 @__cvmx_spi4000_write(i32 %57, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %15

64:                                               ; preds = %15
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @__cvmx_spi4000_write(i32 %65, i32 1439, i32 1023)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %83, %64
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %68, 10
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1536
  %74 = call i32 @__cvmx_spi4000_write(i32 %71, i32 %73, i32 2304)
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1546
  %78 = call i32 @__cvmx_spi4000_write(i32 %75, i32 %77, i32 2048)
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1556
  %82 = call i32 @__cvmx_spi4000_write(i32 %79, i32 %81, i32 896)
  br label %83

83:                                               ; preds = %70
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %67

86:                                               ; preds = %67
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @__cvmx_spi4000_write(i32 %87, i32 1438, i32 0)
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @__cvmx_spi4000_write(i32 %89, i32 1568, i32 0)
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @__cvmx_spi4000_write(i32 %91, i32 1280, i32 1023)
  ret void
}

declare dso_local i32 @__cvmx_spi4000_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
