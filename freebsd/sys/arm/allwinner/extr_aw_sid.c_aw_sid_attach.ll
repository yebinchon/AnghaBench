; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_sid.c_aw_sid_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_sid.c_aw_sid_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_sid_softc = type { %struct.aw_sid_conf*, i32, i32, i32 }
%struct.aw_sid_conf = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@aw_sid_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@aw_sid_sc = common dso_local global %struct.aw_sid_softc* null, align 8
@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@aw_sid_sysctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aw_sid_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_sid_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aw_sid_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ofw_bus_get_node(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.aw_sid_softc* @device_get_softc(i32 %9)
  store %struct.aw_sid_softc* %10, %struct.aw_sid_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %4, align 8
  %13 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @aw_sid_spec, align 4
  %16 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %4, align 8
  %17 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %16, i32 0, i32 2
  %18 = call i64 @bus_alloc_resources(i32 %14, i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %99

24:                                               ; preds = %1
  %25 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %4, align 8
  %26 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_nameunit(i32 %27)
  %29 = load i32, i32* @MTX_DEF, align 4
  %30 = call i32 @mtx_init(i32* %26, i32 %28, i32* null, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @compat_data, align 4
  %33 = call %struct.TYPE_4__* @ofw_bus_search_compatible(i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.aw_sid_conf*
  %37 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %4, align 8
  %38 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %37, i32 0, i32 0
  store %struct.aw_sid_conf* %36, %struct.aw_sid_conf** %38, align 8
  %39 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %4, align 8
  store %struct.aw_sid_softc* %39, %struct.aw_sid_softc** @aw_sid_sc, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @OF_xref_from_node(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @OF_device_register_xref(i32 %41, i32 %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %95, %24
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %4, align 8
  %47 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %46, i32 0, i32 0
  %48 = load %struct.aw_sid_conf*, %struct.aw_sid_conf** %47, align 8
  %49 = getelementptr inbounds %struct.aw_sid_conf, %struct.aw_sid_conf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %44
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_get_sysctl_ctx(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @device_get_sysctl_tree(i32 %55)
  %57 = call i32 @SYSCTL_CHILDREN(i32 %56)
  %58 = load i32, i32* @OID_AUTO, align 4
  %59 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %4, align 8
  %60 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %59, i32 0, i32 0
  %61 = load %struct.aw_sid_conf*, %struct.aw_sid_conf** %60, align 8
  %62 = getelementptr inbounds %struct.aw_sid_conf, %struct.aw_sid_conf* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CTLTYPE_STRING, align 4
  %70 = load i32, i32* @CTLFLAG_RD, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %4, align 8
  %74 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %73, i32 0, i32 0
  %75 = load %struct.aw_sid_conf*, %struct.aw_sid_conf** %74, align 8
  %76 = getelementptr inbounds %struct.aw_sid_conf, %struct.aw_sid_conf* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @aw_sid_sysctl, align 4
  %84 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %4, align 8
  %85 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %84, i32 0, i32 0
  %86 = load %struct.aw_sid_conf*, %struct.aw_sid_conf** %85, align 8
  %87 = getelementptr inbounds %struct.aw_sid_conf, %struct.aw_sid_conf* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @SYSCTL_ADD_PROC(i32 %54, i32 %57, i32 %58, i32 %68, i32 %71, i32 %72, i32 %82, i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %52
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %44

98:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %20
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.aw_sid_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local %struct.TYPE_4__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
