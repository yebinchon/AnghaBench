; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_set_turbo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_set_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_cpufreq_softc = type { i32 }
%struct.msg_set_turbo = type { %struct.TYPE_10__, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@BCM2835_MBOX_TURBO_ON = common dso_local global i64 0, align 8
@BCM2835_MBOX_TURBO_OFF = common dso_local global i64 0, align 8
@BCM2835_MBOX_CODE_REQ = common dso_local global i32 0, align 4
@BCM2835_MBOX_TAG_SET_TURBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"can't set turbo\0A\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"level = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_cpufreq_softc*, i64)* @bcm2835_cpufreq_set_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_cpufreq_set_turbo(%struct.bcm2835_cpufreq_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm2835_cpufreq_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.msg_set_turbo, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bcm2835_cpufreq_softc* %0, %struct.bcm2835_cpufreq_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @BCM2835_MBOX_TURBO_ON, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @BCM2835_MBOX_TURBO_OFF, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* @BCM2835_MBOX_TURBO_OFF, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %16, %12, %2
  %19 = call i32 @memset(%struct.msg_set_turbo* %6, i32 0, i32 56)
  %20 = getelementptr inbounds %struct.msg_set_turbo, %struct.msg_set_turbo* %6, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 56, i32* %21, align 4
  %22 = load i32, i32* @BCM2835_MBOX_CODE_REQ, align 4
  %23 = getelementptr inbounds %struct.msg_set_turbo, %struct.msg_set_turbo* %6, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @BCM2835_MBOX_TAG_SET_TURBO, align 4
  %26 = getelementptr inbounds %struct.msg_set_turbo, %struct.msg_set_turbo* %6, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds %struct.msg_set_turbo, %struct.msg_set_turbo* %6, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 24, i32* %29, align 8
  %30 = getelementptr inbounds %struct.msg_set_turbo, %struct.msg_set_turbo* %6, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 16, i32* %31, align 4
  %32 = getelementptr inbounds %struct.msg_set_turbo, %struct.msg_set_turbo* %6, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.msg_set_turbo, %struct.msg_set_turbo* %6, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = getelementptr inbounds %struct.msg_set_turbo, %struct.msg_set_turbo* %6, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = call i32 @bcm2835_mbox_property(%struct.msg_set_turbo* %6, i32 56)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %18
  %44 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %45 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @MSG_ERROR, align 4
  store i32 %48, i32* %3, align 4
  br label %58

49:                                               ; preds = %18
  %50 = getelementptr inbounds %struct.msg_set_turbo, %struct.msg_set_turbo* %6, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %49, %43
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.msg_set_turbo*, i32, i32) #1

declare dso_local i32 @bcm2835_mbox_property(%struct.msg_set_turbo*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
