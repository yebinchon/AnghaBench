; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_sdma.c_sdma_overrides.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_sdma.c_sdma_overrides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_softc = type { i32 }

@SDMAARM_EVTOVR = common dso_local global i32 0, align 4
@SDMAARM_HOSTOVR = common dso_local global i32 0, align 4
@SDMAARM_DSPOVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_softc*, i32, i32, i32, i32)* @sdma_overrides to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_overrides(%struct.sdma_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sdma_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sdma_softc* %0, %struct.sdma_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.sdma_softc*, %struct.sdma_softc** %6, align 8
  %13 = load i32, i32* @SDMAARM_EVTOVR, align 4
  %14 = call i32 @READ4(%struct.sdma_softc* %12, i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* %11, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %11, align 4
  br label %28

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.sdma_softc*, %struct.sdma_softc** %6, align 8
  %30 = load i32, i32* @SDMAARM_EVTOVR, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @WRITE4(%struct.sdma_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.sdma_softc*, %struct.sdma_softc** %6, align 8
  %34 = load i32, i32* @SDMAARM_HOSTOVR, align 4
  %35 = call i32 @READ4(%struct.sdma_softc* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %49

43:                                               ; preds = %28
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.sdma_softc*, %struct.sdma_softc** %6, align 8
  %51 = load i32, i32* @SDMAARM_HOSTOVR, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @WRITE4(%struct.sdma_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.sdma_softc*, %struct.sdma_softc** %6, align 8
  %55 = load i32, i32* @SDMAARM_DSPOVR, align 4
  %56 = call i32 @READ4(%struct.sdma_softc* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %70

64:                                               ; preds = %49
  %65 = load i32, i32* %7, align 4
  %66 = shl i32 1, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.sdma_softc*, %struct.sdma_softc** %6, align 8
  %72 = load i32, i32* @SDMAARM_DSPOVR, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @WRITE4(%struct.sdma_softc* %71, i32 %72, i32 %73)
  ret i32 0
}

declare dso_local i32 @READ4(%struct.sdma_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.sdma_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
