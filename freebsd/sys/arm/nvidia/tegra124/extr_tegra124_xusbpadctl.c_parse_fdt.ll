; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_parse_fdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_parse_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_softc = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pads\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot find pads subnode.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot find ports subnode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padctl_softc*, i64)* @parse_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fdt(%struct.padctl_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.padctl_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @ofw_bus_find_child(i64 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %14 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %3, align 4
  br label %76

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @OF_child(i64 %19)
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %38, %18
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @ofw_bus_node_status_okay(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %38

29:                                               ; preds = %24
  %30 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @process_pad(%struct.padctl_softc* %30, i64 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %76

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %28
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @OF_peer(i64 %39)
  store i64 %40, i64* %6, align 8
  br label %21

41:                                               ; preds = %21
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @ofw_bus_find_child(i64 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %48 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %3, align 4
  br label %76

52:                                               ; preds = %41
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @OF_child(i64 %53)
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %72, %52
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @ofw_bus_node_status_okay(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %72

63:                                               ; preds = %58
  %64 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @process_port(%struct.padctl_softc* %64, i64 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %76

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %62
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @OF_peer(i64 %73)
  store i64 %74, i64* %6, align 8
  br label %55

75:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %69, %46, %35, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @ofw_bus_node_status_okay(i64) #1

declare dso_local i32 @process_pad(%struct.padctl_softc*, i64) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @process_port(%struct.padctl_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
