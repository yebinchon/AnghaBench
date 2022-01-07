; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_dc_reset_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_dc_reset_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_softc = type { i32 }

@MAP_CONF_VAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_softc*, i32)* @ipu_dc_reset_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_dc_reset_map(%struct.ipu_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipu_softc* %0, %struct.ipu_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @DC_MAP_CONF_VAL(i32 %8)
  %10 = call i32 @IPU_READ4(%struct.ipu_softc* %7, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 16, i32* %6, align 4
  br label %16

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load i32, i32* @MAP_CONF_VAL_MASK, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @DC_MAP_CONF_VAL(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @IPU_WRITE4(%struct.ipu_softc* %23, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @IPU_READ4(%struct.ipu_softc*, i32) #1

declare dso_local i32 @DC_MAP_CONF_VAL(i32) #1

declare dso_local i32 @IPU_WRITE4(%struct.ipu_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
