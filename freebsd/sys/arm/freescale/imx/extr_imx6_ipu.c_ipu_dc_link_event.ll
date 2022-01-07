; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_dc_link_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_dc_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_softc = type { i32 }

@DC_RL0_CH_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_softc*, i32, i32, i32)* @ipu_dc_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_dc_link_event(%struct.ipu_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ipu_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipu_softc* %0, %struct.ipu_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = srem i32 %12, 2
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 16, i32* %11, align 4
  br label %17

16:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* @DC_RL0_CH_5, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %19, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ipu_softc*, %struct.ipu_softc** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @IPU_READ4(%struct.ipu_softc* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = shl i32 65535, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 8
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ipu_softc*, %struct.ipu_softc** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @IPU_WRITE4(%struct.ipu_softc* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @IPU_READ4(%struct.ipu_softc*, i32) #1

declare dso_local i32 @IPU_WRITE4(%struct.ipu_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
