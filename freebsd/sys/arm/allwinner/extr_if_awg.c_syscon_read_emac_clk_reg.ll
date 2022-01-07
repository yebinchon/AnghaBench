; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_syscon_read_emac_clk_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_syscon_read_emac_clk_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32**, i32* }

@EMAC_CLK_REG = common dso_local global i32 0, align 4
@_RES_SYSCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @syscon_read_emac_clk_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscon_read_emac_clk_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.awg_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.awg_softc* @device_get_softc(i32 %5)
  store %struct.awg_softc* %6, %struct.awg_softc** %4, align 8
  %7 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %8 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %13 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @EMAC_CLK_REG, align 4
  %16 = call i32 @SYSCON_READ_4(i32* %14, i32 %15)
  store i32 %16, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %19 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load i64, i64* @_RES_SYSCON, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %27 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i64, i64* @_RES_SYSCON, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @bus_read_4(i32* %31, i32 0)
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %25, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.awg_softc* @device_get_softc(i32) #1

declare dso_local i32 @SYSCON_READ_4(i32*, i32) #1

declare dso_local i32 @bus_read_4(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
