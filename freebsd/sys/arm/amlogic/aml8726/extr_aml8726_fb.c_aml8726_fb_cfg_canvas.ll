; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_fb.c_aml8726_fb_cfg_canvas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_fb.c_aml8726_fb_cfg_canvas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_fb_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@AML_CAV_LUT_DATAL_WIDTH_SHIFT = common dso_local global i32 0, align 4
@AML_CAV_LUT_DATAL_WIDTH_MASK = common dso_local global i32 0, align 4
@AML_CAV_LUT_DATAL_REG = common dso_local global i32 0, align 4
@AML_CAV_LUT_DATAL_WIDTH_WIDTH = common dso_local global i32 0, align 4
@AML_CAV_LUT_DATAH_WIDTH_SHIFT = common dso_local global i32 0, align 4
@AML_CAV_LUT_DATAH_WIDTH_MASK = common dso_local global i32 0, align 4
@AML_CAV_LUT_DATAH_HEIGHT_SHIFT = common dso_local global i32 0, align 4
@AML_CAV_LUT_DATAH_HEIGHT_MASK = common dso_local global i32 0, align 4
@AML_CAV_LUT_DATAH_BLKMODE_LINEAR = common dso_local global i32 0, align 4
@AML_CAV_LUT_DATAH_REG = common dso_local global i32 0, align 4
@AML_CAV_LUT_ADDR_REG = common dso_local global i32 0, align 4
@AML_CAV_LUT_ADDR_WR_EN = common dso_local global i32 0, align 4
@AML_CAV_OSD1_INDEX = common dso_local global i32 0, align 4
@AML_CAV_LUT_ADDR_INDEX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aml8726_fb_softc*)* @aml8726_fb_cfg_canvas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_fb_cfg_canvas(%struct.aml8726_fb_softc* %0) #0 {
  %2 = alloca %struct.aml8726_fb_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.aml8726_fb_softc* %0, %struct.aml8726_fb_softc** %2, align 8
  %5 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %6 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = sdiv i32 %9, 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AML_CAV_LUT_DATAL_WIDTH_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* @AML_CAV_LUT_DATAL_WIDTH_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %17 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = sdiv i32 %20, 8
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %25 = load i32, i32* @AML_CAV_LUT_DATAL_REG, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @CAV_WRITE_4(%struct.aml8726_fb_softc* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @AML_CAV_LUT_DATAL_WIDTH_WIDTH, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32, i32* @AML_CAV_LUT_DATAH_WIDTH_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @AML_CAV_LUT_DATAH_WIDTH_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %3, align 4
  %35 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %36 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @AML_CAV_LUT_DATAH_HEIGHT_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @AML_CAV_LUT_DATAH_HEIGHT_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @AML_CAV_LUT_DATAH_BLKMODE_LINEAR, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %50 = load i32, i32* @AML_CAV_LUT_DATAH_REG, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @CAV_WRITE_4(%struct.aml8726_fb_softc* %49, i32 %50, i32 %51)
  %53 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %54 = load i32, i32* @AML_CAV_LUT_ADDR_REG, align 4
  %55 = load i32, i32* @AML_CAV_LUT_ADDR_WR_EN, align 4
  %56 = load i32, i32* @AML_CAV_OSD1_INDEX, align 4
  %57 = load i32, i32* @AML_CAV_LUT_ADDR_INDEX_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  %60 = call i32 @CAV_WRITE_4(%struct.aml8726_fb_softc* %53, i32 %54, i32 %59)
  %61 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %62 = load i32, i32* @AML_CAV_LUT_ADDR_REG, align 4
  %63 = call i32 @CAV_BARRIER(%struct.aml8726_fb_softc* %61, i32 %62)
  ret void
}

declare dso_local i32 @CAV_WRITE_4(%struct.aml8726_fb_softc*, i32, i32) #1

declare dso_local i32 @CAV_BARRIER(%struct.aml8726_fb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
