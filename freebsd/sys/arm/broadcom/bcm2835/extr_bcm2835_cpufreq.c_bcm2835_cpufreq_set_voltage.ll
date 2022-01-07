; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_set_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_cpufreq_softc = type { i32 }
%struct.msg_set_voltage = type { %struct.TYPE_10__, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MAX_OVER_VOLTAGE = common dso_local global i32 0, align 4
@MIN_OVER_VOLTAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"not supported voltage: %d\0A\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@BCM2835_MBOX_CODE_REQ = common dso_local global i32 0, align 4
@BCM2835_MBOX_TAG_SET_VOLTAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"can't set voltage\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"value = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_cpufreq_softc*, i8*, i32)* @bcm2835_cpufreq_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_cpufreq_set_voltage(%struct.bcm2835_cpufreq_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm2835_cpufreq_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msg_set_voltage, align 8
  %9 = alloca i32, align 4
  store %struct.bcm2835_cpufreq_softc* %0, %struct.bcm2835_cpufreq_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @MAX_OVER_VOLTAGE, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MIN_OVER_VOLTAGE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13, %3
  %18 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %5, align 8
  %19 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @MSG_ERROR, align 4
  store i32 %23, i32* %4, align 4
  br label %67

24:                                               ; preds = %13
  %25 = call i32 @memset(%struct.msg_set_voltage* %8, i32 0, i32 56)
  %26 = getelementptr inbounds %struct.msg_set_voltage, %struct.msg_set_voltage* %8, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 56, i32* %27, align 4
  %28 = load i32, i32* @BCM2835_MBOX_CODE_REQ, align 4
  %29 = getelementptr inbounds %struct.msg_set_voltage, %struct.msg_set_voltage* %8, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @BCM2835_MBOX_TAG_SET_VOLTAGE, align 4
  %32 = getelementptr inbounds %struct.msg_set_voltage, %struct.msg_set_voltage* %8, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = getelementptr inbounds %struct.msg_set_voltage, %struct.msg_set_voltage* %8, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 24, i32* %35, align 8
  %36 = getelementptr inbounds %struct.msg_set_voltage, %struct.msg_set_voltage* %8, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 16, i32* %37, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds %struct.msg_set_voltage, %struct.msg_set_voltage* %8, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = getelementptr inbounds %struct.msg_set_voltage, %struct.msg_set_voltage* %8, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = getelementptr inbounds %struct.msg_set_voltage, %struct.msg_set_voltage* %8, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = call i32 @bcm2835_mbox_property(%struct.msg_set_voltage* %8, i32 56)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %24
  %53 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %5, align 8
  %54 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @MSG_ERROR, align 4
  store i32 %57, i32* %4, align 4
  br label %67

58:                                               ; preds = %24
  %59 = getelementptr inbounds %struct.msg_set_voltage, %struct.msg_set_voltage* %8, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %58, %52, %17
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.msg_set_voltage*, i32, i32) #1

declare dso_local i32 @bcm2835_mbox_property(%struct.msg_set_voltage*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
