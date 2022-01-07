; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_sysctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_sysctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adc_softc = type { i32, i32*, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clockdiv\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@ti_adc_clockdiv_proc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ADC clock prescaler\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ain\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"ADC inputs\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ADC input\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@ti_adc_inputs = common dso_local global %struct.ti_adc_softc* null, align 8
@ti_adc_enable_proc = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"Enable ADC input\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"open_delay\00", align 1
@ti_adc_open_delay_proc = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"ADC open delay\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"samples_avg\00", align 1
@ti_adc_samples_avg_proc = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"ADC samples average\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Converted raw value for the ADC input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_adc_softc*)* @ti_adc_sysctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_adc_sysctl_init(%struct.ti_adc_softc* %0) #0 {
  %2 = alloca %struct.ti_adc_softc*, align 8
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_oid_list*, align 8
  %9 = alloca %struct.sysctl_oid_list*, align 8
  %10 = alloca %struct.sysctl_oid_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ti_adc_softc* %0, %struct.ti_adc_softc** %2, align 8
  %13 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %15)
  store %struct.sysctl_ctx_list* %16, %struct.sysctl_ctx_list** %4, align 8
  %17 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %19)
  store %struct.sysctl_oid* %20, %struct.sysctl_oid** %5, align 8
  %21 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %22 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %21)
  store %struct.sysctl_oid_list* %22, %struct.sysctl_oid_list** %8, align 8
  %23 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %24 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* @CTLFLAG_RW, align 4
  %27 = load i32, i32* @CTLTYPE_UINT, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %30 = load i32, i32* @ti_adc_clockdiv_proc, align 4
  %31 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %23, %struct.sysctl_oid_list* %24, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %28, %struct.ti_adc_softc* %29, i32 0, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %33 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %34 = load i32, i32* @OID_AUTO, align 4
  %35 = load i32, i32* @CTLFLAG_RD, align 4
  %36 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %32, %struct.sysctl_oid_list* %33, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sysctl_oid* %36, %struct.sysctl_oid** %6, align 8
  %37 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %38 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %37)
  store %struct.sysctl_oid_list* %38, %struct.sysctl_oid_list** %9, align 8
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %110, %1
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %113

45:                                               ; preds = %39
  %46 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %47 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @snprintf(i8* %53, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %57 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %58 = load i32, i32* @OID_AUTO, align 4
  %59 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %60 = load i32, i32* @CTLFLAG_RD, align 4
  %61 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %56, %struct.sysctl_oid_list* %57, i32 %58, i8* %59, i32 %60, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store %struct.sysctl_oid* %61, %struct.sysctl_oid** %7, align 8
  %62 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %63 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %62)
  store %struct.sysctl_oid_list* %63, %struct.sysctl_oid_list** %10, align 8
  %64 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %65 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %66 = load i32, i32* @OID_AUTO, align 4
  %67 = load i32, i32* @CTLFLAG_RW, align 4
  %68 = load i32, i32* @CTLTYPE_UINT, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** @ti_adc_inputs, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %70, i64 %72
  %74 = load i32, i32* @ti_adc_enable_proc, align 4
  %75 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %64, %struct.sysctl_oid_list* %65, i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %69, %struct.ti_adc_softc* %73, i32 0, i32 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %76 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %77 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLFLAG_RW, align 4
  %80 = load i32, i32* @CTLTYPE_UINT, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** @ti_adc_inputs, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %82, i64 %84
  %86 = load i32, i32* @ti_adc_open_delay_proc, align 4
  %87 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %76, %struct.sysctl_oid_list* %77, i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %81, %struct.ti_adc_softc* %85, i32 0, i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %88 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %89 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %90 = load i32, i32* @OID_AUTO, align 4
  %91 = load i32, i32* @CTLFLAG_RW, align 4
  %92 = load i32, i32* @CTLTYPE_UINT, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** @ti_adc_inputs, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %94, i64 %96
  %98 = load i32, i32* @ti_adc_samples_avg_proc, align 4
  %99 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %88, %struct.sysctl_oid_list* %89, i32 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %93, %struct.ti_adc_softc* %97, i32 0, i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %100 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %101 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %102 = load i32, i32* @OID_AUTO, align 4
  %103 = load i32, i32* @CTLFLAG_RD, align 4
  %104 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** @ti_adc_inputs, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %104, i64 %106
  %108 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %107, i32 0, i32 2
  %109 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %100, %struct.sysctl_oid_list* %101, i32 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %103, i32* %108, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  br label %110

110:                                              ; preds = %45
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %39

113:                                              ; preds = %39
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.ti_adc_softc*, i32, i32, i8*, i8*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
