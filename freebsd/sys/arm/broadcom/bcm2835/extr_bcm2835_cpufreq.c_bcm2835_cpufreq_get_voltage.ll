; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_get_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_cpufreq_softc = type { i32 }
%struct.msg_get_voltage = type { %struct.TYPE_10__, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@BCM2835_MBOX_CODE_REQ = common dso_local global i32 0, align 4
@BCM2835_MBOX_TAG_GET_VOLTAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"can't get voltage\0A\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"value = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_cpufreq_softc*, i32)* @bcm2835_cpufreq_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_cpufreq_get_voltage(%struct.bcm2835_cpufreq_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm2835_cpufreq_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msg_get_voltage, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bcm2835_cpufreq_softc* %0, %struct.bcm2835_cpufreq_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @memset(%struct.msg_get_voltage* %6, i32 0, i32 48)
  %10 = getelementptr inbounds %struct.msg_get_voltage, %struct.msg_get_voltage* %6, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 48, i32* %11, align 4
  %12 = load i32, i32* @BCM2835_MBOX_CODE_REQ, align 4
  %13 = getelementptr inbounds %struct.msg_get_voltage, %struct.msg_get_voltage* %6, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @BCM2835_MBOX_TAG_GET_VOLTAGE, align 4
  %16 = getelementptr inbounds %struct.msg_get_voltage, %struct.msg_get_voltage* %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = getelementptr inbounds %struct.msg_get_voltage, %struct.msg_get_voltage* %6, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 16, i32* %19, align 8
  %20 = getelementptr inbounds %struct.msg_get_voltage, %struct.msg_get_voltage* %6, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 4, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = getelementptr inbounds %struct.msg_get_voltage, %struct.msg_get_voltage* %6, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = getelementptr inbounds %struct.msg_get_voltage, %struct.msg_get_voltage* %6, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = call i32 @bcm2835_mbox_property(%struct.msg_get_voltage* %6, i32 48)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %32 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @MSG_ERROR, align 4
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.msg_get_voltage, %struct.msg_get_voltage* %6, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %30
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.msg_get_voltage*, i32, i32) #1

declare dso_local i32 @bcm2835_mbox_property(%struct.msg_get_voltage*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
