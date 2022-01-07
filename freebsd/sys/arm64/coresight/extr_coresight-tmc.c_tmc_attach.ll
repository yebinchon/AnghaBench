; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_desc = type { i32, i8*, i32 }
%struct.tmc_softc = type { i32, i32, i8* }

@tmc_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CORESIGHT_TMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tmc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.coresight_desc, align 8
  %5 = alloca %struct.tmc_softc*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.tmc_softc* @device_get_softc(i8* %6)
  store %struct.tmc_softc* %7, %struct.tmc_softc** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.tmc_softc*, %struct.tmc_softc** %5, align 8
  %10 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @tmc_spec, align 4
  %13 = load %struct.tmc_softc*, %struct.tmc_softc** %5, align 8
  %14 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %13, i32 0, i32 1
  %15 = call i64 @bus_alloc_resources(i8* %11, i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @device_printf(i8* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @coresight_get_platform_data(i8* %22)
  %24 = load %struct.tmc_softc*, %struct.tmc_softc** %5, align 8
  %25 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tmc_softc*, %struct.tmc_softc** %5, align 8
  %27 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %4, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %4, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* @CORESIGHT_TMC, align 4
  %33 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %4, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = call i32 @coresight_register(%struct.coresight_desc* %4)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %21, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.tmc_softc* @device_get_softc(i8*) #1

declare dso_local i64 @bus_alloc_resources(i8*, i32, i32*) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local i32 @coresight_get_platform_data(i8*) #1

declare dso_local i32 @coresight_register(%struct.coresight_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
