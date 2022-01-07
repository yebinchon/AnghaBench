; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_fdt.c_arm_gic_add_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_fdt.c_arm_gic_add_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_gic_fdt_softc = type { i32, i32 }
%struct.arm_gic_devinfo = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Have a child, but no ranges\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @arm_gic_add_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_gic_add_children(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.arm_gic_fdt_softc*, align 8
  %5 = alloca %struct.arm_gic_devinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.arm_gic_fdt_softc* @device_get_softc(i32* %9)
  store %struct.arm_gic_fdt_softc* %10, %struct.arm_gic_fdt_softc** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @ofw_bus_get_node(i32* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @OF_child(i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

18:                                               ; preds = %1
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %4, align 8
  %21 = call i64 @arm_gic_fill_ranges(i64 %19, %struct.arm_gic_fdt_softc* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @device_printf(i32* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %88

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %84, %26
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %27
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.arm_gic_devinfo* @malloc(i32 8, i32 %31, i32 %34)
  store %struct.arm_gic_devinfo* %35, %struct.arm_gic_devinfo** %5, align 8
  %36 = load %struct.arm_gic_devinfo*, %struct.arm_gic_devinfo** %5, align 8
  %37 = getelementptr inbounds %struct.arm_gic_devinfo, %struct.arm_gic_devinfo* %36, i32 0, i32 0
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_3__* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load %struct.arm_gic_devinfo*, %struct.arm_gic_devinfo** %5, align 8
  %43 = load i32, i32* @M_DEVBUF, align 4
  %44 = call i32 @free(%struct.arm_gic_devinfo* %42, i32 %43)
  br label %84

45:                                               ; preds = %30
  %46 = load %struct.arm_gic_devinfo*, %struct.arm_gic_devinfo** %5, align 8
  %47 = getelementptr inbounds %struct.arm_gic_devinfo, %struct.arm_gic_devinfo* %46, i32 0, i32 1
  %48 = call i32 @resource_list_init(i32* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %4, align 8
  %52 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %4, align 8
  %55 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.arm_gic_devinfo*, %struct.arm_gic_devinfo** %5, align 8
  %58 = getelementptr inbounds %struct.arm_gic_devinfo, %struct.arm_gic_devinfo* %57, i32 0, i32 1
  %59 = call i32 @ofw_bus_reg_to_rl(i32* %49, i64 %50, i32 %53, i32 %56, i32* %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32* @device_add_child(i32* %60, i32* null, i32 -1)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %45
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.arm_gic_devinfo*, %struct.arm_gic_devinfo** %5, align 8
  %67 = getelementptr inbounds %struct.arm_gic_devinfo, %struct.arm_gic_devinfo* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32*, i8*, ...) @device_printf(i32* %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.arm_gic_devinfo*, %struct.arm_gic_devinfo** %5, align 8
  %72 = getelementptr inbounds %struct.arm_gic_devinfo, %struct.arm_gic_devinfo* %71, i32 0, i32 1
  %73 = call i32 @resource_list_free(i32* %72)
  %74 = load %struct.arm_gic_devinfo*, %struct.arm_gic_devinfo** %5, align 8
  %75 = getelementptr inbounds %struct.arm_gic_devinfo, %struct.arm_gic_devinfo* %74, i32 0, i32 0
  %76 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_3__* %75)
  %77 = load %struct.arm_gic_devinfo*, %struct.arm_gic_devinfo** %5, align 8
  %78 = load i32, i32* @M_DEVBUF, align 4
  %79 = call i32 @free(%struct.arm_gic_devinfo* %77, i32 %78)
  br label %84

80:                                               ; preds = %45
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.arm_gic_devinfo*, %struct.arm_gic_devinfo** %5, align 8
  %83 = call i32 @device_set_ivars(i32* %81, %struct.arm_gic_devinfo* %82)
  br label %84

84:                                               ; preds = %80, %64, %41
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @OF_peer(i64 %85)
  store i64 %86, i64* %6, align 8
  br label %27

87:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %23, %17
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.arm_gic_fdt_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @arm_gic_fill_ranges(i64, %struct.arm_gic_fdt_softc*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local %struct.arm_gic_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @free(%struct.arm_gic_devinfo*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @ofw_bus_reg_to_rl(i32*, i64, i32, i32, i32*) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_3__*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.arm_gic_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
