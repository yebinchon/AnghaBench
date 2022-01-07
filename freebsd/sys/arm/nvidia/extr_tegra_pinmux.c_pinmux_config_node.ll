; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pinmux.c_pinmux_config_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pinmux.c_pinmux_config_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_softc = type { i32, i32 }
%struct.pincfg = type { i8* }
%struct.tegra_mux = type { i32 }
%struct.tegra_grp = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"dsi_b\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"csi\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Unknown pin: %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinmux_softc*, i8*, %struct.pincfg*)* @pinmux_config_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinmux_config_node(%struct.pinmux_softc* %0, i8* %1, %struct.pincfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinmux_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pincfg*, align 8
  %8 = alloca %struct.tegra_mux*, align 8
  %9 = alloca %struct.tegra_grp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinmux_softc* %0, %struct.pinmux_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.pincfg* %2, %struct.pincfg** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %3
  %16 = load %struct.pincfg*, %struct.pincfg** %7, align 8
  %17 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %87

21:                                               ; preds = %15
  %22 = load %struct.pinmux_softc*, %struct.pinmux_softc** %5, align 8
  %23 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bus_read_4(i32 %24, i32 0)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.pincfg*, %struct.pincfg** %7, align 8
  %27 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, -3
  store i32 %33, i32* %10, align 4
  br label %44

34:                                               ; preds = %21
  %35 = load %struct.pincfg*, %struct.pincfg** %7, align 8
  %36 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, 2
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %34
  br label %44

44:                                               ; preds = %43, %31
  %45 = load %struct.pinmux_softc*, %struct.pinmux_softc** %5, align 8
  %46 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @bus_write_4(i32 %47, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %44, %3
  %51 = load i8*, i8** %6, align 8
  %52 = call %struct.tegra_mux* @pinmux_search_mux(i8* %51)
  store %struct.tegra_mux* %52, %struct.tegra_mux** %8, align 8
  %53 = load %struct.tegra_mux*, %struct.tegra_mux** %8, align 8
  %54 = icmp ne %struct.tegra_mux* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.tegra_mux*, %struct.tegra_mux** %8, align 8
  %57 = getelementptr inbounds %struct.tegra_mux, %struct.tegra_mux* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %55
  %62 = load %struct.pinmux_softc*, %struct.pinmux_softc** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.tegra_mux*, %struct.tegra_mux** %8, align 8
  %65 = load %struct.pincfg*, %struct.pincfg** %7, align 8
  %66 = call i32 @pinmux_config_mux(%struct.pinmux_softc* %62, i8* %63, %struct.tegra_mux* %64, %struct.pincfg* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %87

68:                                               ; preds = %50
  %69 = load i8*, i8** %6, align 8
  %70 = call %struct.tegra_grp* @pinmux_search_grp(i8* %69)
  store %struct.tegra_grp* %70, %struct.tegra_grp** %9, align 8
  %71 = load %struct.tegra_grp*, %struct.tegra_grp** %9, align 8
  %72 = icmp ne %struct.tegra_grp* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.pinmux_softc*, %struct.pinmux_softc** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.tegra_grp*, %struct.tegra_grp** %9, align 8
  %77 = load %struct.pincfg*, %struct.pincfg** %7, align 8
  %78 = call i32 @pinmux_config_grp(%struct.pinmux_softc* %74, i8* %75, %struct.tegra_grp* %76, %struct.pincfg* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %87

80:                                               ; preds = %68
  %81 = load %struct.pinmux_softc*, %struct.pinmux_softc** %5, align 8
  %82 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %80, %73, %61, %20
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local %struct.tegra_mux* @pinmux_search_mux(i8*) #1

declare dso_local i32 @pinmux_config_mux(%struct.pinmux_softc*, i8*, %struct.tegra_mux*, %struct.pincfg*) #1

declare dso_local %struct.tegra_grp* @pinmux_search_grp(i8*) #1

declare dso_local i32 @pinmux_config_grp(%struct.pinmux_softc*, i8*, %struct.tegra_grp*, %struct.pincfg*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
