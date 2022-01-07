; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_softc = type { i32, i32*, i32, i32*, i32*, i32**, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @spi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.spi_softc* @device_get_softc(i32 %7)
  store %struct.spi_softc* %8, %struct.spi_softc** %4, align 8
  %9 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @bus_generic_detach(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %105

16:                                               ; preds = %1
  %17 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %24 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @device_delete_child(i32 %22, i32* %25)
  br label %27

27:                                               ; preds = %21, %16
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %30, i32 0, i32 5
  %32 = load i32**, i32*** %31, align 8
  %33 = call i32 @nitems(i32** %32)
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %28
  %36 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %37 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %36, i32 0, i32 5
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %46 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %45, i32 0, i32 5
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @gpio_pin_release(i32* %51)
  br label %53

53:                                               ; preds = %44, %35
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %28

57:                                               ; preds = %28
  %58 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %59 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %64 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %67 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %70 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @bus_teardown_intr(i32 %65, i32* %68, i32* %71)
  br label %73

73:                                               ; preds = %62, %57
  %74 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %75 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %80 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SYS_RES_IRQ, align 4
  %83 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %84 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @bus_release_resource(i32 %81, i32 %82, i32 0, i32* %85)
  br label %87

87:                                               ; preds = %78, %73
  %88 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %89 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %94 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SYS_RES_MEMORY, align 4
  %97 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %98 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @bus_release_resource(i32 %95, i32 %96, i32 0, i32* %99)
  br label %101

101:                                              ; preds = %92, %87
  %102 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %103 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %102, i32 0, i32 0
  %104 = call i32 @mtx_destroy(i32* %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %14
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @nitems(i32**) #1

declare dso_local i32 @gpio_pin_release(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
