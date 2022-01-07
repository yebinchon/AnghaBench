; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_container_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_container_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32 }
%struct.aac_sim = type { i32, i32*, i32*, %struct.aac_softc*, i32, i64, i32 }

@M_AACRAIDBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No memory to add container bus\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory?!\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"aacraidp\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"device_add_child failed for container bus\0A\00", align 1
@AAC_MAX_CONTAINERS = common dso_local global i32 0, align 4
@CONTAINER_BUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Container Bus\00", align 1
@sim_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*)* @aac_container_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_container_bus(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca %struct.aac_sim*, align 8
  %4 = alloca i32*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %5 = load i32, i32* @M_AACRAIDBUF, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call i64 @malloc(i32 56, i32 %5, i32 %8)
  %10 = inttoptr i64 %9 to %struct.aac_sim*
  store %struct.aac_sim* %10, %struct.aac_sim** %3, align 8
  %11 = load %struct.aac_sim*, %struct.aac_sim** %3, align 8
  %12 = icmp eq %struct.aac_sim* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %15 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %21 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @device_add_child(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %28 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct.aac_sim*, %struct.aac_sim** %3, align 8
  %32 = load i32, i32* @M_AACRAIDBUF, align 4
  %33 = call i32 @free(%struct.aac_sim* %31, i32 %32)
  %34 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %26, %19
  %36 = load i32, i32* @AAC_MAX_CONTAINERS, align 4
  %37 = load %struct.aac_sim*, %struct.aac_sim** %3, align 8
  %38 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.aac_sim*, %struct.aac_sim** %3, align 8
  %40 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @CONTAINER_BUS, align 4
  %42 = load %struct.aac_sim*, %struct.aac_sim** %3, align 8
  %43 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.aac_sim*, %struct.aac_sim** %3, align 8
  %45 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %47 = load %struct.aac_sim*, %struct.aac_sim** %3, align 8
  %48 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %47, i32 0, i32 3
  store %struct.aac_softc* %46, %struct.aac_softc** %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.aac_sim*, %struct.aac_sim** %3, align 8
  %51 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.aac_sim*, %struct.aac_sim** %3, align 8
  %53 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.aac_sim*, %struct.aac_sim** %3, align 8
  %56 = call i32 @device_set_ivars(i32* %54, %struct.aac_sim* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @device_set_desc(i32* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %60 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %59, i32 0, i32 1
  %61 = load %struct.aac_sim*, %struct.aac_sim** %3, align 8
  %62 = load i32, i32* @sim_link, align 4
  %63 = call i32 @TAILQ_INSERT_TAIL(i32* %60, %struct.aac_sim* %61, i32 %62)
  %64 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %65 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bus_generic_attach(i32 %66)
  ret void
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.aac_sim*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.aac_sim*) #1

declare dso_local i32 @device_set_desc(i32*, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.aac_sim*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
