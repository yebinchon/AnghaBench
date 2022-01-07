; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_localbus.c_localbus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_localbus.c_localbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.localbus_softc = type { i32, i32* }
%struct.localbus_devinfo = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@localbus_banks = common dso_local global i32 0, align 4
@M_LOCALBUS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not set up devinfo\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"could not process 'reg' property\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"could not add child: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @localbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @localbus_attach(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.localbus_softc*, align 8
  %5 = alloca %struct.localbus_devinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.localbus_softc* @device_get_softc(i32* %8)
  store %struct.localbus_softc* %9, %struct.localbus_softc** %4, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load %struct.localbus_softc*, %struct.localbus_softc** %4, align 8
  %12 = getelementptr inbounds %struct.localbus_softc, %struct.localbus_softc* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load i32, i32* @localbus_banks, align 4
  %14 = load %struct.localbus_softc*, %struct.localbus_softc** %4, align 8
  %15 = getelementptr inbounds %struct.localbus_softc, %struct.localbus_softc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @ofw_bus_get_node(i32* %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @OF_child(i64 %18)
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %93, %1
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %96

23:                                               ; preds = %20
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @ofw_bus_node_status_okay(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %93

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @mv_fdt_pm(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %93

33:                                               ; preds = %28
  %34 = load i32, i32* @M_LOCALBUS, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call %struct.localbus_devinfo* @malloc(i32 8, i32 %34, i32 %37)
  store %struct.localbus_devinfo* %38, %struct.localbus_devinfo** %5, align 8
  %39 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %5, align 8
  %40 = getelementptr inbounds %struct.localbus_devinfo, %struct.localbus_devinfo* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_3__* %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %5, align 8
  %46 = load i32, i32* @M_LOCALBUS, align 4
  %47 = call i32 @free(%struct.localbus_devinfo* %45, i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 (i32*, i8*, ...) @device_printf(i32* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %93

50:                                               ; preds = %33
  %51 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %5, align 8
  %52 = getelementptr inbounds %struct.localbus_devinfo, %struct.localbus_devinfo* %51, i32 0, i32 1
  %53 = call i32 @resource_list_init(i32* %52)
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.localbus_softc*, %struct.localbus_softc** %4, align 8
  %56 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %5, align 8
  %57 = call i64 @fdt_localbus_reg_decode(i64 %54, %struct.localbus_softc* %55, %struct.localbus_devinfo* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 (i32*, i8*, ...) @device_printf(i32* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %5, align 8
  %63 = getelementptr inbounds %struct.localbus_devinfo, %struct.localbus_devinfo* %62, i32 0, i32 0
  %64 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_3__* %63)
  %65 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %5, align 8
  %66 = load i32, i32* @M_LOCALBUS, align 4
  %67 = call i32 @free(%struct.localbus_devinfo* %65, i32 %66)
  br label %93

68:                                               ; preds = %50
  %69 = load i32*, i32** %2, align 8
  %70 = call i32* @device_add_child(i32* %69, i32* null, i32 -1)
  store i32* %70, i32** %3, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load i32*, i32** %2, align 8
  %75 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %5, align 8
  %76 = getelementptr inbounds %struct.localbus_devinfo, %struct.localbus_devinfo* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32*, i8*, ...) @device_printf(i32* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %5, align 8
  %81 = getelementptr inbounds %struct.localbus_devinfo, %struct.localbus_devinfo* %80, i32 0, i32 1
  %82 = call i32 @resource_list_free(i32* %81)
  %83 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %5, align 8
  %84 = getelementptr inbounds %struct.localbus_devinfo, %struct.localbus_devinfo* %83, i32 0, i32 0
  %85 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_3__* %84)
  %86 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %5, align 8
  %87 = load i32, i32* @M_LOCALBUS, align 4
  %88 = call i32 @free(%struct.localbus_devinfo* %86, i32 %87)
  br label %93

89:                                               ; preds = %68
  %90 = load i32*, i32** %3, align 8
  %91 = load %struct.localbus_devinfo*, %struct.localbus_devinfo** %5, align 8
  %92 = call i32 @device_set_ivars(i32* %90, %struct.localbus_devinfo* %91)
  br label %93

93:                                               ; preds = %89, %73, %59, %44, %32, %27
  %94 = load i64, i64* %7, align 8
  %95 = call i64 @OF_peer(i64 %94)
  store i64 %95, i64* %7, align 8
  br label %20

96:                                               ; preds = %20
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @bus_generic_attach(i32* %97)
  ret i32 %98
}

declare dso_local %struct.localbus_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @ofw_bus_node_status_okay(i64) #1

declare dso_local i32 @mv_fdt_pm(i64) #1

declare dso_local %struct.localbus_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @free(%struct.localbus_devinfo*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i64 @fdt_localbus_reg_decode(i64, %struct.localbus_softc*, %struct.localbus_devinfo*) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_3__*) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.localbus_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
