; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_cpufreq_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_cpufreq_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_anatop_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.oppt = type { i32, i32 }

@_hw_imx = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cpu_mhz\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"CPU frequency\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cpu_minmhz\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@CTLFLAG_NOFETCH = common dso_local global i32 0, align 4
@cpufreq_sysctl_minmhz = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Minimum CPU frequency\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"cpu_maxmhz\00", align 1
@cpufreq_sysctl_maxmhz = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Maximum CPU frequency\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"cpu_maxmhz_hw\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Maximum CPU frequency allowed by hardware\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"cpu_overclock_enable\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"Allow setting CPU frequency higher than cpu_maxmhz_hw\00", align 1
@FSL_OCOTP_CFG3 = common dso_local global i32 0, align 4
@FSL_OCOTP_CFG3_SPEED_MASK = common dso_local global i64 0, align 8
@FSL_OCOTP_CFG3_SPEED_SHIFT = common dso_local global i64 0, align 8
@imx6_ocotp_mhz_tab = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"hw.imx6.cpu_minmhz\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"hw.imx6.cpu_maxmhz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx6_anatop_softc*)* @cpufreq_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpufreq_initialize(%struct.imx6_anatop_softc* %0) #0 {
  %2 = alloca %struct.imx6_anatop_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.oppt*, align 8
  store %struct.imx6_anatop_softc* %0, %struct.imx6_anatop_softc** %2, align 8
  %5 = load i32, i32* @_hw_imx, align 4
  %6 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %5)
  %7 = load i32, i32* @OID_AUTO, align 4
  %8 = load i32, i32* @CTLFLAG_RD, align 4
  %9 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %10 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %9, i32 0, i32 7
  %11 = call i32 @SYSCTL_ADD_INT(i32* null, i32 %6, i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8, i32* %10, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @_hw_imx, align 4
  %13 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %12)
  %14 = load i32, i32* @OID_AUTO, align 4
  %15 = load i32, i32* @CTLTYPE_INT, align 4
  %16 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CTLFLAG_NOFETCH, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %21 = load i32, i32* @cpufreq_sysctl_minmhz, align 4
  %22 = call i32 @SYSCTL_ADD_PROC(i32* null, i32 %13, i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %19, %struct.imx6_anatop_softc* %20, i32 0, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %23 = load i32, i32* @_hw_imx, align 4
  %24 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %23)
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* @CTLTYPE_INT, align 4
  %27 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CTLFLAG_NOFETCH, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %32 = load i32, i32* @cpufreq_sysctl_maxmhz, align 4
  %33 = call i32 @SYSCTL_ADD_PROC(i32* null, i32 %24, i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %30, %struct.imx6_anatop_softc* %31, i32 0, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %34 = load i32, i32* @_hw_imx, align 4
  %35 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %34)
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLFLAG_RD, align 4
  %38 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %39 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %38, i32 0, i32 5
  %40 = call i32 @SYSCTL_ADD_INT(i32* null, i32 %35, i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %37, i32* %39, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %41 = load i32, i32* @_hw_imx, align 4
  %42 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %41)
  %43 = load i32, i32* @OID_AUTO, align 4
  %44 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %45 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %46 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %45, i32 0, i32 6
  %47 = call i32 @SYSCTL_ADD_INT(i32* null, i32 %42, i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %44, i32* %46, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0))
  %48 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %49 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %48, i32 0, i32 0
  store i32 24, i32* %49, align 4
  %50 = load i32, i32* @FSL_OCOTP_CFG3, align 4
  %51 = call i64 @fsl_ocotp_read_4(i32 %50)
  %52 = load i64, i64* @FSL_OCOTP_CFG3_SPEED_MASK, align 8
  %53 = and i64 %51, %52
  %54 = load i64, i64* @FSL_OCOTP_CFG3_SPEED_SHIFT, align 8
  %55 = lshr i64 %53, %54
  store i64 %55, i64* %3, align 8
  %56 = load i32*, i32** @imx6_ocotp_mhz_tab, align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %61 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %63 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %66 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %68 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %67, i32 0, i32 4
  %69 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32* %68)
  %70 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %71 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %72 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.oppt* @cpufreq_nearest_oppt(%struct.imx6_anatop_softc* %70, i32 %73)
  store %struct.oppt* %74, %struct.oppt** %4, align 8
  %75 = load %struct.oppt*, %struct.oppt** %4, align 8
  %76 = getelementptr inbounds %struct.oppt, %struct.oppt* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %79 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.oppt*, %struct.oppt** %4, align 8
  %81 = getelementptr inbounds %struct.oppt, %struct.oppt* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %84 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %86 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %85, i32 0, i32 2
  %87 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32* %86)
  %88 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %89 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %90 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.oppt* @cpufreq_nearest_oppt(%struct.imx6_anatop_softc* %88, i32 %91)
  store %struct.oppt* %92, %struct.oppt** %4, align 8
  %93 = load %struct.oppt*, %struct.oppt** %4, align 8
  %94 = getelementptr inbounds %struct.oppt, %struct.oppt* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %97 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.oppt*, %struct.oppt** %4, align 8
  %99 = getelementptr inbounds %struct.oppt, %struct.oppt* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %102 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %2, align 8
  %104 = load %struct.oppt*, %struct.oppt** %4, align 8
  %105 = call i32 @cpufreq_set_clock(%struct.imx6_anatop_softc* %103, %struct.oppt* %104)
  ret void
}

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.imx6_anatop_softc*, i32, i32, i8*, i8*) #1

declare dso_local i64 @fsl_ocotp_read_4(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local %struct.oppt* @cpufreq_nearest_oppt(%struct.imx6_anatop_softc*, i32) #1

declare dso_local i32 @cpufreq_set_clock(%struct.imx6_anatop_softc*, %struct.oppt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
