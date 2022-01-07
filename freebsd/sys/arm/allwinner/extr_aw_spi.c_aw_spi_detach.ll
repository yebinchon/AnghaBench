; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_spi_softc = type { i32, i32*, i32*, i32, i64, i32*, i32*, i32* }

@aw_spi_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aw_spi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_spi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aw_spi_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.aw_spi_softc* @device_get_softc(i32 %4)
  store %struct.aw_spi_softc* %5, %struct.aw_spi_softc** %3, align 8
  %6 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @bus_generic_detach(i32 %8)
  %10 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %10, i32 0, i32 7
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @device_delete_child(i32 %15, i32* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @clk_release(i32* %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %32 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %37 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @clk_release(i32* %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %42 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %47 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @hwreset_assert(i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %52 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %57 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %60 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %65 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @bus_teardown_intr(i32 %58, i32 %63, i32* %66)
  br label %68

68:                                               ; preds = %55, %50
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @aw_spi_spec, align 4
  %71 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %72 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bus_release_resources(i32 %69, i32 %70, i32* %73)
  %75 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %76 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %75, i32 0, i32 0
  %77 = call i32 @mtx_destroy(i32* %76)
  ret i32 0
}

declare dso_local %struct.aw_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @hwreset_assert(i64) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
