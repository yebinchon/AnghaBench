; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-gpio.h_cvmx_gpio_interrupt_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-gpio.h_cvmx_gpio_interrupt_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@OCTEON_CN61XX = common dso_local global i32 0, align 4
@CVMX_GPIO_MULTI_CAST = common dso_local global i32 0, align 4
@CVMX_GPIO_INT_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cvmx_gpio_interrupt_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_gpio_interrupt_clear(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__, align 8
  %4 = alloca %struct.TYPE_15__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__, align 4
  %7 = alloca %struct.TYPE_14__, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @OCTEON_CN61XX, align 4
  %9 = call i64 @OCTEON_IS_MODEL(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %56

11:                                               ; preds = %1
  %12 = call i32 (...) @cvmx_get_core_num()
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @CVMX_GPIO_MULTI_CAST, align 4
  %14 = call i8* @cvmx_read_csr(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @CVMX_GPIO_BIT_CFGX(i32 %16)
  %18 = call i8* @cvmx_read_csr(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 2
  %37 = call i32 @CVMX_CIU_INTX_SUM0(i32 %36)
  %38 = call i8* @cvmx_read_csr(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %2, align 4
  %42 = and i32 %41, 240
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %45, 2
  %47 = call i32 @CVMX_CIU_INTX_SUM0(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cvmx_write_csr(i32 %47, i32 %49)
  %51 = load i32, i32* @CVMX_GPIO_INT_CLR, align 4
  %52 = load i32, i32* %2, align 4
  %53 = and i32 %52, -241
  %54 = call i32 @cvmx_write_csr(i32 %51, i32 %53)
  br label %65

55:                                               ; preds = %29, %24, %11
  br label %56

56:                                               ; preds = %55, %1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %2, align 4
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @CVMX_GPIO_INT_CLR, align 4
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cvmx_write_csr(i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %56, %34
  ret void
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GPIO_BIT_CFGX(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_SUM0(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
