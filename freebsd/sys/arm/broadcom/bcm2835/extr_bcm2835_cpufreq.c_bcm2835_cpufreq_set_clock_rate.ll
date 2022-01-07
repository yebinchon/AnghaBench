; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_set_clock_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_set_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_cpufreq_softc = type { i32 }
%struct.msg_set_clock_rate = type { %struct.TYPE_10__, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i32, i8* }

@BCM2835_MBOX_CODE_REQ = common dso_local global i8* null, align 8
@BCM2835_MBOX_TAG_SET_CLOCK_RATE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"can't set clock rate (id=%u)\0A\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@BCM2835_MBOX_CLOCK_ID_CORE = common dso_local global i64 0, align 8
@TRANSITION_LATENCY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock = %d(Hz)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_cpufreq_softc*, i64, i64)* @bcm2835_cpufreq_set_clock_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_cpufreq_set_clock_rate(%struct.bcm2835_cpufreq_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm2835_cpufreq_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.msg_set_clock_rate, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bcm2835_cpufreq_softc* %0, %struct.bcm2835_cpufreq_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = call i32 @memset(%struct.msg_set_clock_rate* %8, i32 0, i32 64)
  %12 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 64, i32* %13, align 8
  %14 = load i8*, i8** @BCM2835_MBOX_CODE_REQ, align 8
  %15 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @BCM2835_MBOX_TAG_SET_CLOCK_RATE, align 8
  %18 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 24, i32* %21, align 8
  %22 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 16, i32* %23, align 4
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = call i32 @bcm2835_mbox_property(%struct.msg_set_clock_rate* %8, i32 64)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %3
  %37 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %5, align 8
  %38 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @MSG_ERROR, align 4
  store i32 %42, i32* %4, align 4
  br label %92

43:                                               ; preds = %3
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @BCM2835_MBOX_CLOCK_ID_CORE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %43
  %48 = load i32, i32* @TRANSITION_LATENCY, align 4
  %49 = call i32 @DELAY(i32 %48)
  %50 = call i32 @memset(%struct.msg_set_clock_rate* %8, i32 0, i32 64)
  %51 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 64, i32* %52, align 8
  %53 = load i8*, i8** @BCM2835_MBOX_CODE_REQ, align 8
  %54 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @BCM2835_MBOX_TAG_SET_CLOCK_RATE, align 8
  %57 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 24, i32* %60, align 8
  %61 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32 16, i32* %62, align 4
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = call i32 @bcm2835_mbox_property(%struct.msg_set_clock_rate* %8, i32 64)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %47
  %76 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %5, align 8
  %77 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* @MSG_ERROR, align 4
  store i32 %81, i32* %4, align 4
  br label %92

82:                                               ; preds = %47
  br label %83

83:                                               ; preds = %82, %43
  %84 = getelementptr inbounds %struct.msg_set_clock_rate, %struct.msg_set_clock_rate* %8, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %83, %75, %36
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @memset(%struct.msg_set_clock_rate*, i32, i32) #1

declare dso_local i32 @bcm2835_mbox_property(%struct.msg_set_clock_rate*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
