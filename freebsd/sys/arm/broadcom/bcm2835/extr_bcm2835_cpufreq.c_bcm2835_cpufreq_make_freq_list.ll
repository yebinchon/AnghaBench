; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_make_freq_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_make_freq_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32, i8*, i8* }
%struct.bcm2835_cpufreq_softc = type { i32, i32, i64, i32, i32 }

@MHZSTEP = common dso_local global i32 0, align 4
@BCM2835_MBOX_TURBO_ON = common dso_local global i64 0, align 8
@cpufreq_lowest_freq = common dso_local global i32 0, align 4
@TRANSITION_LATENCY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.cf_setting*, i32*)* @bcm2835_cpufreq_make_freq_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_cpufreq_make_freq_list(i8* %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bcm2835_cpufreq_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.bcm2835_cpufreq_softc* @device_get_softc(i8* %13)
  store %struct.bcm2835_cpufreq_softc* %14, %struct.bcm2835_cpufreq_softc** %7, align 8
  %15 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %7, align 8
  %16 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %7, align 8
  %19 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MHZSTEP, align 4
  %23 = srem i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %3
  %33 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %7, align 8
  %34 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BCM2835_MBOX_TURBO_ON, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @cpufreq_lowest_freq, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @cpufreq_lowest_freq, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %32
  store i32 0, i32* %12, align 4
  %46 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %7, align 8
  %47 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %50, i64 %52
  %54 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %56, i64 %58
  %60 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 4
  %61 = load i8*, i8** @TRANSITION_LATENCY, align 8
  %62 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %62, i64 %64
  %66 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %65, i32 0, i32 3
  store i8* %61, i8** %66, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %68, i64 %70
  %72 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %71, i32 0, i32 2
  store i8* %67, i8** %72, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %45
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %80, i64 %82
  %84 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %86, i64 %88
  %90 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %89, i32 0, i32 1
  store i32 %85, i32* %90, align 4
  %91 = load i8*, i8** @TRANSITION_LATENCY, align 8
  %92 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %92, i64 %94
  %96 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %95, i32 0, i32 3
  store i8* %91, i8** %96, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %98, i64 %100
  %102 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %101, i32 0, i32 2
  store i8* %97, i8** %102, align 8
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %78, %45
  %106 = load i32, i32* %12, align 4
  %107 = load i32*, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  ret i32 0
}

declare dso_local %struct.bcm2835_cpufreq_softc* @device_get_softc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
