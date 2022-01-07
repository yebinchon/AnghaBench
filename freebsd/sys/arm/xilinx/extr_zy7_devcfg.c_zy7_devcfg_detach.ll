; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_devcfg.c_zy7_devcfg_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_devcfg.c_zy7_devcfg_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_devcfg_softc = type { i32*, i32*, i64, i32*, i32*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@zy7_devcfg_softc_p = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @zy7_devcfg_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zy7_devcfg_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zy7_devcfg_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.zy7_devcfg_softc* @device_get_softc(i32 %4)
  store %struct.zy7_devcfg_softc* %5, %struct.zy7_devcfg_softc** %3, align 8
  %6 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %7 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %12 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %11, i32 0, i32 5
  %13 = call i32 @sysctl_ctx_free(i32* %12)
  %14 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %15 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @device_is_attached(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @bus_generic_detach(i32 %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %25 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %30 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @destroy_dev(i32* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %35 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %40 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %2, align 4
  %45 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %46 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %49 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @bus_teardown_intr(i32 %44, i32* %47, i64 %50)
  br label %52

52:                                               ; preds = %43, %38
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @SYS_RES_IRQ, align 4
  %55 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %56 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @rman_get_rid(i32* %57)
  %59 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %60 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @bus_release_resource(i32 %53, i32 %54, i32 %58, i32* %61)
  br label %63

63:                                               ; preds = %52, %33
  %64 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %65 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @SYS_RES_MEMORY, align 4
  %71 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %72 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @rman_get_rid(i32* %73)
  %75 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %76 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bus_release_resource(i32 %69, i32 %70, i32 %74, i32* %77)
  br label %79

79:                                               ; preds = %68, %63
  store i32* null, i32** @zy7_devcfg_softc_p, align 8
  %80 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %81 = call i32 @DEVCFG_SC_LOCK_DESTROY(%struct.zy7_devcfg_softc* %80)
  ret i32 0
}

declare dso_local %struct.zy7_devcfg_softc* @device_get_softc(i32) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @DEVCFG_SC_LOCK_DESTROY(%struct.zy7_devcfg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
