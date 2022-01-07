; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_process_pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_process_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_softc = type { i32 }
%struct.padctl_pad = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot read pad name.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Unknown pad: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"lanes\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Cannot find regulators subnode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padctl_softc*, i64)* @process_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_pad(%struct.padctl_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.padctl_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.padctl_pad*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @OF_getprop_alloc(i64 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %15 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @device_printf(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %3, align 4
  br label %77

19:                                               ; preds = %2
  %20 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call %struct.padctl_pad* @search_pad(%struct.padctl_softc* %20, i8* %21)
  store %struct.padctl_pad* %22, %struct.padctl_pad** %6, align 8
  %23 = load %struct.padctl_pad*, %struct.padctl_pad** %6, align 8
  %24 = icmp eq %struct.padctl_pad* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %27 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %8, align 4
  br label %69

32:                                               ; preds = %19
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @ofw_bus_find_child(i64 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %39 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %8, align 4
  br label %69

43:                                               ; preds = %32
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @OF_child(i64 %44)
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %63, %43
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @ofw_bus_node_status_okay(i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %63

54:                                               ; preds = %49
  %55 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.padctl_pad*, %struct.padctl_pad** %6, align 8
  %58 = call i32 @process_lane(%struct.padctl_softc* %55, i64 %56, %struct.padctl_pad* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %69

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @OF_peer(i64 %64)
  store i64 %65, i64* %5, align 8
  br label %46

66:                                               ; preds = %46
  %67 = load %struct.padctl_pad*, %struct.padctl_pad** %6, align 8
  %68 = getelementptr inbounds %struct.padctl_pad, %struct.padctl_pad* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %66, %61, %37, %25
  %70 = load i8*, i8** %7, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @OF_prop_free(i8* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %13
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @OF_getprop_alloc(i64, i8*, i8**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.padctl_pad* @search_pad(%struct.padctl_softc*, i8*) #1

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @ofw_bus_node_status_okay(i64) #1

declare dso_local i32 @process_lane(%struct.padctl_softc*, i64, %struct.padctl_pad*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @OF_prop_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
