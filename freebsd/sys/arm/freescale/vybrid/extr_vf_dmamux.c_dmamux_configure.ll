; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_dmamux.c_dmamux_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_dmamux.c_dmamux_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmamux_softc = type { i32 }

@dmamux_sc = common dso_local global %struct.dmamux_softc* null, align 8
@CHCFG_ENBL = common dso_local global i32 0, align 4
@CHCFG_SOURCE_MASK = common dso_local global i32 0, align 4
@CHCFG_SOURCE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmamux_configure(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dmamux_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dmamux_softc*, %struct.dmamux_softc** @dmamux_sc, align 8
  store %struct.dmamux_softc* %11, %struct.dmamux_softc** %9, align 8
  %12 = load %struct.dmamux_softc*, %struct.dmamux_softc** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @DMAMUX_CHCFG(i32 %14)
  %16 = call i32 @MUX_WRITE1(%struct.dmamux_softc* %12, i32 %13, i32 %15, i32 0)
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @CHCFG_ENBL, align 4
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %19, %4
  %24 = load i32, i32* @CHCFG_SOURCE_MASK, align 4
  %25 = load i32, i32* @CHCFG_SOURCE_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CHCFG_SOURCE_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.dmamux_softc*, %struct.dmamux_softc** %9, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @DMAMUX_CHCFG(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @MUX_WRITE1(%struct.dmamux_softc* %35, i32 %36, i32 %38, i32 %39)
  ret i32 0
}

declare dso_local i32 @MUX_WRITE1(%struct.dmamux_softc*, i32, i32, i32) #1

declare dso_local i32 @DMAMUX_CHCFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
