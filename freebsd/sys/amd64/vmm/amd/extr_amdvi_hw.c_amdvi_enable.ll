; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_ctrl = type { i32, i32, %struct.amdvi_ctrl* }
%struct.amdvi_softc = type { i32, i32, %struct.amdvi_softc* }

@ivhd_count = common dso_local global i32 0, align 4
@ivhd_devs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"softc is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ctrl is NULL\0A\00", align 1
@AMDVI_CTRL_EN = common dso_local global i32 0, align 4
@AMDVI_CTRL_CMD = common dso_local global i32 0, align 4
@AMDVI_CTRL_ELOG = common dso_local global i32 0, align 4
@AMDVI_CTRL_ELOGINT = common dso_local global i32 0, align 4
@AMDVI_CTRL_INV_TO_1S = common dso_local global i32 0, align 4
@IVHD_FLAG_COH = common dso_local global i32 0, align 4
@AMDVI_CTRL_COH = common dso_local global i32 0, align 4
@IVHD_FLAG_HTT = common dso_local global i32 0, align 4
@AMDVI_CTRL_HTT = common dso_local global i32 0, align 4
@IVHD_FLAG_RPPW = common dso_local global i32 0, align 4
@AMDVI_CTRL_RPPW = common dso_local global i32 0, align 4
@IVHD_FLAG_PPW = common dso_local global i32 0, align 4
@AMDVI_CTRL_PPW = common dso_local global i32 0, align 4
@IVHD_FLAG_ISOC = common dso_local global i32 0, align 4
@AMDVI_CTRL_ISOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @amdvi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdvi_enable() #0 {
  %1 = alloca %struct.amdvi_ctrl*, align 8
  %2 = alloca %struct.amdvi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %92, %0
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ivhd_count, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %95

9:                                                ; preds = %5
  %10 = load i32*, i32** @ivhd_devs, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.amdvi_softc* @device_get_softc(i32 %14)
  store %struct.amdvi_softc* %15, %struct.amdvi_softc** %2, align 8
  %16 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %17 = call i32 @KASSERT(%struct.amdvi_softc* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %19 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %18, i32 0, i32 2
  %20 = load %struct.amdvi_softc*, %struct.amdvi_softc** %19, align 8
  %21 = bitcast %struct.amdvi_softc* %20 to %struct.amdvi_ctrl*
  store %struct.amdvi_ctrl* %21, %struct.amdvi_ctrl** %1, align 8
  %22 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %1, align 8
  %23 = bitcast %struct.amdvi_ctrl* %22 to %struct.amdvi_softc*
  %24 = call i32 @KASSERT(%struct.amdvi_softc* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @AMDVI_CTRL_EN, align 4
  %26 = load i32, i32* @AMDVI_CTRL_CMD, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AMDVI_CTRL_ELOG, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AMDVI_CTRL_ELOGINT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @AMDVI_CTRL_INV_TO_1S, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %3, align 4
  %34 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %35 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IVHD_FLAG_COH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %9
  %41 = load i32, i32* @AMDVI_CTRL_COH, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %9
  %45 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %46 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IVHD_FLAG_HTT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @AMDVI_CTRL_HTT, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %57 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IVHD_FLAG_RPPW, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @AMDVI_CTRL_RPPW, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %68 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IVHD_FLAG_PPW, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @AMDVI_CTRL_PPW, align 4
  %75 = load i32, i32* %3, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %79 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IVHD_FLAG_ISOC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @AMDVI_CTRL_ISOC, align 4
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %77
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %1, align 8
  %91 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %5

95:                                               ; preds = %5
  ret void
}

declare dso_local %struct.amdvi_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(%struct.amdvi_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
