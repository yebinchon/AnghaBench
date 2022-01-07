; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32*, i32, i8*, i8*, i32 }
%struct.bcm2835_cpufreq_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i8* null, align 8
@BCM2835_MBOX_CLOCK_ID_ARM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"can't get clock\0A\00", align 1
@TRANSITION_LATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cf_setting*)* @bcm2835_cpufreq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_cpufreq_get(i32* %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.bcm2835_cpufreq_softc*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %8 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %9 = icmp eq %struct.cf_setting* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %50

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.bcm2835_cpufreq_softc* @device_get_softc(i32* %13)
  store %struct.bcm2835_cpufreq_softc* %14, %struct.bcm2835_cpufreq_softc** %6, align 8
  %15 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %16 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %17 = call i32 @memset(%struct.cf_setting* %15, i8* %16, i32 40)
  %18 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %19 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %6, align 8
  %21 = call i32 @VC_LOCK(%struct.bcm2835_cpufreq_softc* %20)
  %22 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %6, align 8
  %23 = load i32, i32* @BCM2835_MBOX_CLOCK_ID_ARM, align 4
  %24 = call i32 @bcm2835_cpufreq_get_clock_rate(%struct.bcm2835_cpufreq_softc* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %6, align 8
  %26 = call i32 @VC_UNLOCK(%struct.bcm2835_cpufreq_softc* %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %12
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @device_printf(i32* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %50

33:                                               ; preds = %12
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @HZ2MHZ(i32 %34)
  %36 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %37 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %39 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %40 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %42 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %43 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @TRANSITION_LATENCY, align 4
  %45 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %46 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %49 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %33, %29, %10
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.bcm2835_cpufreq_softc* @device_get_softc(i32*) #1

declare dso_local i32 @memset(%struct.cf_setting*, i8*, i32) #1

declare dso_local i32 @VC_LOCK(%struct.bcm2835_cpufreq_softc*) #1

declare dso_local i32 @bcm2835_cpufreq_get_clock_rate(%struct.bcm2835_cpufreq_softc*, i32) #1

declare dso_local i32 @VC_UNLOCK(%struct.bcm2835_cpufreq_softc*) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @HZ2MHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
