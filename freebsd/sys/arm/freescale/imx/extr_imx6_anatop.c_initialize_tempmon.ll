; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_initialize_tempmon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_initialize_tempmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_anatop_softc = type { i32, i32, i32, i32, i32, i64, i32, i32, i8* }

@FSL_OCOTP_ANA1 = common dso_local global i32 0, align 4
@IMX6_ANALOG_TEMPMON_TEMPSENSE1 = common dso_local global i32 0, align 4
@IMX6_ANALOG_TEMPMON_TEMPSENSE0 = common dso_local global i32 0, align 4
@IMX6_ANALOG_TEMPMON_TEMPSENSE0_ALARM_SHIFT = common dso_local global i32 0, align 4
@IMX6_ANALOG_TEMPMON_TEMPSENSE0_MEASURE = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@tempmon_throttle_check = common dso_local global i32 0, align 4
@_hw_imx = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@temp_sysctl_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Current die temperature\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"throttle_temperature\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@temp_throttle_sysctl_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Throttle CPU when exceeding this temperature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx6_anatop_softc*)* @initialize_tempmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_tempmon(%struct.imx6_anatop_softc* %0) #0 {
  %2 = alloca %struct.imx6_anatop_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.imx6_anatop_softc* %0, %struct.imx6_anatop_softc** %2, align 8
  %4 = load i32, i32* @FSL_OCOTP_ANA1, align 4
  %5 = call i32 @fsl_ocotp_read_4(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, -1048576
  %8 = lshr i32 %7, 20
  %9 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %10 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 1048320
  %13 = ashr i32 %12, 8
  %14 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %15 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 255
  %18 = mul nsw i32 %17, 10
  %19 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %20 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %22 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 100
  %25 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %26 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %28 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %29 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @temp_to_count(%struct.imx6_anatop_softc* %27, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %34 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %36 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %37 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 50
  %40 = call i8* @temp_to_count(%struct.imx6_anatop_softc* %35, i32 %39)
  %41 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %42 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %41, i32 0, i32 8
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @IMX6_ANALOG_TEMPMON_TEMPSENSE1, align 4
  %44 = call i32 @imx6_anatop_write_4(i32 %43, i32 2048)
  %45 = load i32, i32* @IMX6_ANALOG_TEMPMON_TEMPSENSE0, align 4
  %46 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %47 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IMX6_ANALOG_TEMPMON_TEMPSENSE0_ALARM_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* @IMX6_ANALOG_TEMPMON_TEMPSENSE0_MEASURE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @imx6_anatop_write_4(i32 %45, i32 %52)
  br label %54

54:                                               ; preds = %59, %1
  %55 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %56 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %61 = call i32 @temp_update_count(%struct.imx6_anatop_softc* %60)
  br label %54

62:                                               ; preds = %54
  %63 = load i32, i32* @SBT_1MS, align 4
  %64 = mul nsw i32 100, %63
  %65 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %66 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %68 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %67, i32 0, i32 7
  %69 = call i32 @callout_init(i32* %68, i32 0)
  %70 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %71 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %70, i32 0, i32 7
  %72 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %73 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @tempmon_throttle_check, align 4
  %76 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %77 = call i32 @callout_reset_sbt(i32* %71, i32 %74, i32 0, i32 %75, %struct.imx6_anatop_softc* %76, i32 0)
  %78 = load i32, i32* @_hw_imx, align 4
  %79 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %78)
  %80 = load i32, i32* @OID_AUTO, align 4
  %81 = load i32, i32* @CTLTYPE_INT, align 4
  %82 = load i32, i32* @CTLFLAG_RD, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %85 = load i32, i32* @temp_sysctl_handler, align 4
  %86 = call i32 @SYSCTL_ADD_PROC(i32* null, i32 %79, i32 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %83, %struct.imx6_anatop_softc* %84, i32 0, i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @_hw_imx, align 4
  %88 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %87)
  %89 = load i32, i32* @OID_AUTO, align 4
  %90 = load i32, i32* @CTLTYPE_INT, align 4
  %91 = load i32, i32* @CTLFLAG_RW, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %94 = load i32, i32* @temp_throttle_sysctl_handler, align 4
  %95 = call i32 @SYSCTL_ADD_PROC(i32* null, i32 %88, i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %92, %struct.imx6_anatop_softc* %93, i32 0, i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fsl_ocotp_read_4(i32) #1

declare dso_local i8* @temp_to_count(%struct.imx6_anatop_softc*, i32) #1

declare dso_local i32 @imx6_anatop_write_4(i32, i32) #1

declare dso_local i32 @temp_update_count(%struct.imx6_anatop_softc*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.imx6_anatop_softc*, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.imx6_anatop_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
