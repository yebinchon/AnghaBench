; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-dynamic-replicator.c_replicator_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-dynamic-replicator.c_replicator_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replicator_softc = type { i32, i32 }
%struct.coresight_desc = type { i32, i32, i32 }

@replicator_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CORESIGHT_DYNAMIC_REPLICATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @replicator_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replicator_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.replicator_softc*, align 8
  %5 = alloca %struct.coresight_desc, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.replicator_softc* @device_get_softc(i32 %6)
  store %struct.replicator_softc* %7, %struct.replicator_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @replicator_spec, align 4
  %10 = load %struct.replicator_softc*, %struct.replicator_softc** %4, align 8
  %11 = getelementptr inbounds %struct.replicator_softc, %struct.replicator_softc* %10, i32 0, i32 1
  %12 = call i64 @bus_alloc_resources(i32 %8, i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @coresight_get_platform_data(i32 %19)
  %21 = load %struct.replicator_softc*, %struct.replicator_softc** %4, align 8
  %22 = getelementptr inbounds %struct.replicator_softc, %struct.replicator_softc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.replicator_softc*, %struct.replicator_softc** %4, align 8
  %24 = getelementptr inbounds %struct.replicator_softc, %struct.replicator_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %5, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %5, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @CORESIGHT_DYNAMIC_REPLICATOR, align 4
  %30 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = call i32 @coresight_register(%struct.coresight_desc* %5)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %18, %14
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.replicator_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @coresight_get_platform_data(i32) #1

declare dso_local i32 @coresight_register(%struct.coresight_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
