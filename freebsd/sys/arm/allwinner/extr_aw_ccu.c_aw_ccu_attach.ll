; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_ccu.c_aw_ccu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_ccu.c_aw_ccu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ccu_softc = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CCU_BASE = common dso_local global i32 0, align 4
@CCU_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"couldn't map CCU: %d\0A\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @aw_ccu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_ccu_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.aw_ccu_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.aw_ccu_softc* @device_get_softc(i32* %9)
  store %struct.aw_ccu_softc* %10, %struct.aw_ccu_softc** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @ofw_bus_get_node(i32* %11)
  store i64 %12, i64* %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @simplebus_init(i32* %13, i64 %14)
  %16 = call %struct.TYPE_2__* (...) @aw_ccu_search_compatible()
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.aw_ccu_softc*, %struct.aw_ccu_softc** %4, align 8
  %20 = getelementptr inbounds %struct.aw_ccu_softc, %struct.aw_ccu_softc* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @bus_get_bus_tag(i32* %21)
  %23 = load %struct.aw_ccu_softc*, %struct.aw_ccu_softc** %4, align 8
  %24 = getelementptr inbounds %struct.aw_ccu_softc, %struct.aw_ccu_softc* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.aw_ccu_softc*, %struct.aw_ccu_softc** %4, align 8
  %26 = getelementptr inbounds %struct.aw_ccu_softc, %struct.aw_ccu_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CCU_BASE, align 4
  %29 = load i32, i32* @CCU_SIZE, align 4
  %30 = load %struct.aw_ccu_softc*, %struct.aw_ccu_softc** %4, align 8
  %31 = getelementptr inbounds %struct.aw_ccu_softc, %struct.aw_ccu_softc* %30, i32 0, i32 1
  %32 = call i32 @bus_space_map(i32 %27, i32 %28, i32 %29, i32 0, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @device_printf(i32* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %68

40:                                               ; preds = %1
  %41 = load %struct.aw_ccu_softc*, %struct.aw_ccu_softc** %4, align 8
  %42 = getelementptr inbounds %struct.aw_ccu_softc, %struct.aw_ccu_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @device_get_nameunit(i32* %43)
  %45 = load i32, i32* @MTX_DEF, align 4
  %46 = call i32 @mtx_init(i32* %42, i32 %44, i32* null, i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @OF_child(i64 %47)
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %62, %40
  %50 = load i64, i64* %6, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i32*, i32** %3, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32* @simplebus_add_device(i32* %53, i64 %54, i32 0, i32* null, i32 -1, i32* null)
  store i32* %55, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @device_probe_and_attach(i32* %59)
  br label %61

61:                                               ; preds = %58, %52
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @OF_peer(i64 %63)
  store i64 %64, i64* %6, align 8
  br label %49

65:                                               ; preds = %49
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @bus_generic_attach(i32* %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %35
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.aw_ccu_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @simplebus_init(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @aw_ccu_search_compatible(...) #1

declare dso_local i32 @bus_get_bus_tag(i32*) #1

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32* @simplebus_add_device(i32*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
