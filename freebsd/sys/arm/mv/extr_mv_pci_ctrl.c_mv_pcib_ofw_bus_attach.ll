; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci_ctrl.c_mv_pcib_ofw_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci_ctrl.c_mv_pcib_ofw_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_ctrl_devinfo = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mv_pcib_ctrl_softc = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@M_PCIB_CTRL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not set up devinfo for PCI\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not add child: %s\0A\00", align 1
@mv_pcib_ctrl_compat = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"could not get ranges\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mv_pcib_ofw_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pcib_ofw_bus_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mv_pcib_ctrl_devinfo*, align 8
  %5 = alloca %struct.mv_pcib_ctrl_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (i32*, i64, i32, i32, i32*)*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @ofw_bus_get_node(i32* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.mv_pcib_ctrl_softc* @device_get_softc(i32* %12)
  store %struct.mv_pcib_ctrl_softc* %13, %struct.mv_pcib_ctrl_softc** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %118

16:                                               ; preds = %1
  %17 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %5, align 8
  %18 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %5, align 8
  %21 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %20, i32 0, i32 0
  %22 = call i64 @OF_getencprop(i64 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %21, i32 4)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %128

26:                                               ; preds = %16
  %27 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %5, align 8
  %28 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %5, align 8
  %31 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %30, i32 0, i32 1
  %32 = call i64 @OF_getencprop(i64 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %31, i32 4)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %128

36:                                               ; preds = %26
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @OF_child(i64 %37)
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %114, %36
  %40 = load i64, i64* %8, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %117

42:                                               ; preds = %39
  %43 = load i32, i32* @M_PCIB_CTRL, align 4
  %44 = load i32, i32* @M_WAITOK, align 4
  %45 = load i32, i32* @M_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = call %struct.mv_pcib_ctrl_devinfo* @malloc(i32 8, i32 %43, i32 %46)
  store %struct.mv_pcib_ctrl_devinfo* %47, %struct.mv_pcib_ctrl_devinfo** %4, align 8
  %48 = load %struct.mv_pcib_ctrl_devinfo*, %struct.mv_pcib_ctrl_devinfo** %4, align 8
  %49 = getelementptr inbounds %struct.mv_pcib_ctrl_devinfo, %struct.mv_pcib_ctrl_devinfo* %48, i32 0, i32 1
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_5__* %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %42
  %54 = load i64, i64* @bootverbose, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 (i32*, i8*, ...) @device_printf(i32* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.mv_pcib_ctrl_devinfo*, %struct.mv_pcib_ctrl_devinfo** %4, align 8
  %61 = load i32, i32* @M_PCIB_CTRL, align 4
  %62 = call i32 @free(%struct.mv_pcib_ctrl_devinfo* %60, i32 %61)
  br label %114

63:                                               ; preds = %42
  %64 = load i32*, i32** %3, align 8
  %65 = call i32* @device_add_child(i32* %64, i32* null, i32 -1)
  store i32* %65, i32** %6, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load i64, i64* @bootverbose, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.mv_pcib_ctrl_devinfo*, %struct.mv_pcib_ctrl_devinfo** %4, align 8
  %74 = getelementptr inbounds %struct.mv_pcib_ctrl_devinfo, %struct.mv_pcib_ctrl_devinfo* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32*, i8*, ...) @device_printf(i32* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %71, %68
  %79 = load %struct.mv_pcib_ctrl_devinfo*, %struct.mv_pcib_ctrl_devinfo** %4, align 8
  %80 = getelementptr inbounds %struct.mv_pcib_ctrl_devinfo, %struct.mv_pcib_ctrl_devinfo* %79, i32 0, i32 1
  %81 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_5__* %80)
  %82 = load %struct.mv_pcib_ctrl_devinfo*, %struct.mv_pcib_ctrl_devinfo** %4, align 8
  %83 = load i32, i32* @M_PCIB_CTRL, align 4
  %84 = call i32 @free(%struct.mv_pcib_ctrl_devinfo* %82, i32 %83)
  br label %114

85:                                               ; preds = %63
  %86 = load %struct.mv_pcib_ctrl_devinfo*, %struct.mv_pcib_ctrl_devinfo** %4, align 8
  %87 = getelementptr inbounds %struct.mv_pcib_ctrl_devinfo, %struct.mv_pcib_ctrl_devinfo* %86, i32 0, i32 0
  %88 = call i32 @resource_list_init(i32* %87)
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* @mv_pcib_ctrl_compat, align 4
  %91 = call %struct.TYPE_4__* @ofw_bus_search_compatible(i32* %89, i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32 (i32*, i64, i32, i32, i32*)*
  store i32 (i32*, i64, i32, i32, i32*)* %94, i32 (i32*, i64, i32, i32, i32*)** %9, align 8
  %95 = load i32 (i32*, i64, i32, i32, i32*)*, i32 (i32*, i64, i32, i32, i32*)** %9, align 8
  %96 = icmp ne i32 (i32*, i64, i32, i32, i32*)* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %85
  %98 = load i32 (i32*, i64, i32, i32, i32*)*, i32 (i32*, i64, i32, i32, i32*)** %9, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %5, align 8
  %102 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %5, align 8
  %105 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mv_pcib_ctrl_devinfo*, %struct.mv_pcib_ctrl_devinfo** %4, align 8
  %108 = getelementptr inbounds %struct.mv_pcib_ctrl_devinfo, %struct.mv_pcib_ctrl_devinfo* %107, i32 0, i32 0
  %109 = call i32 %98(i32* %99, i64 %100, i32 %103, i32 %106, i32* %108)
  br label %110

110:                                              ; preds = %97, %85
  %111 = load i32*, i32** %6, align 8
  %112 = load %struct.mv_pcib_ctrl_devinfo*, %struct.mv_pcib_ctrl_devinfo** %4, align 8
  %113 = call i32 @device_set_ivars(i32* %111, %struct.mv_pcib_ctrl_devinfo* %112)
  br label %114

114:                                              ; preds = %110, %78, %59
  %115 = load i64, i64* %8, align 8
  %116 = call i64 @OF_peer(i64 %115)
  store i64 %116, i64* %8, align 8
  br label %39

117:                                              ; preds = %39
  br label %118

118:                                              ; preds = %117, %1
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %5, align 8
  %121 = call i64 @mv_pcib_ctrl_fill_ranges(i64 %119, %struct.mv_pcib_ctrl_softc* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 (i32*, i8*, ...) @device_printf(i32* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @ENXIO, align 4
  store i32 %126, i32* %2, align 4
  br label %128

127:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %123, %34, %24
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local %struct.mv_pcib_ctrl_softc* @device_get_softc(i32*) #1

declare dso_local i64 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.mv_pcib_ctrl_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @free(%struct.mv_pcib_ctrl_devinfo*, i32) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_5__*) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local %struct.TYPE_4__* @ofw_bus_search_compatible(i32*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.mv_pcib_ctrl_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i64 @mv_pcib_ctrl_fill_ranges(i64, %struct.mv_pcib_ctrl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
