; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usbphy.c_awusbphy_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usbphy.c_awusbphy_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awusbphy_softc = type { i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PMU_UNK_H3 = common dso_local global i32 0, align 4
@PMU_UNK_H3_CLR = common dso_local global i32 0, align 4
@PMU_IRQ_ENABLE = common dso_local global i32 0, align 4
@PMU_ULPI_BYPASS = common dso_local global i32 0, align 4
@PMU_AHB_INCR8 = common dso_local global i32 0, align 4
@PMU_AHB_INCR4 = common dso_local global i32 0, align 4
@PMU_AHB_INCRX_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @awusbphy_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @awusbphy_configure(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.awusbphy_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.awusbphy_softc* @device_get_softc(i32 %6)
  store %struct.awusbphy_softc* %7, %struct.awusbphy_softc** %5, align 8
  %8 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %5, align 8
  %9 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %8, i32 0, i32 0
  %10 = load i32**, i32*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %5, align 8
  %19 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %5, align 8
  %26 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @PMU_UNK_H3, align 4
  %33 = load i32, i32* @PMU_UNK_H3_CLR, align 4
  %34 = call i32 @CLR4(i32* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %24, %17
  %36 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %5, align 8
  %37 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @PMU_IRQ_ENABLE, align 4
  %44 = load i32, i32* @PMU_ULPI_BYPASS, align 4
  %45 = load i32, i32* @PMU_AHB_INCR8, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PMU_AHB_INCR4, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PMU_AHB_INCRX_ALIGN, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @SET4(i32* %42, i32 %43, i32 %50)
  br label %52

52:                                               ; preds = %35, %16
  ret void
}

declare dso_local %struct.awusbphy_softc* @device_get_softc(i32) #1

declare dso_local i32 @CLR4(i32*, i32, i32) #1

declare dso_local i32 @SET4(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
