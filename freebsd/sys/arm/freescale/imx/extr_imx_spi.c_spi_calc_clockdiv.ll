; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_calc_clockdiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_calc_clockdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"base %u bus %u; pre %u, post %u; actual busfreq %u\0A\00", align 1
@CTLREG_PREDIV_SHIFT = common dso_local global i32 0, align 4
@CTLREG_POSTDIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_softc*, i32)* @spi_calc_clockdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_calc_clockdiv(%struct.spi_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_softc* %0, %struct.spi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %9 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 16
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %23, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %34

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %15

34:                                               ; preds = %29, %15
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 15, i32* %7, align 4
  store i32 15, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %40 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 2
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %48 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %54 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  %58 = sdiv i32 %55, %57
  %59 = load i32, i32* %6, align 4
  %60 = shl i32 1, %59
  %61 = sdiv i32 %58, %60
  %62 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51, i32 %52, i32 %61)
  br label %63

63:                                               ; preds = %43, %38
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @CTLREG_PREDIV_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @CTLREG_POSTDIV_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = or i32 %66, %69
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %63, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
