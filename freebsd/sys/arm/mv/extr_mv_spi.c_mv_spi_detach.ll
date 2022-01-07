; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_spi.c_mv_spi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_spi.c_mv_spi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_spi_softc = type { i64, i64, i64, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_spi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_spi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv_spi_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @bus_generic_detach(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.mv_spi_softc* @device_get_softc(i32 %6)
  store %struct.mv_spi_softc* %7, %struct.mv_spi_softc** %3, align 8
  %8 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %8, i32 0, i32 3
  %10 = call i32 @mtx_destroy(i32* %9)
  %11 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @bus_teardown_intr(i32 %16, i64 %19, i64 %22)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @SYS_RES_IRQ, align 4
  %32 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @bus_release_resource(i32 %30, i32 %31, i32 0, i64 %34)
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @SYS_RES_MEMORY, align 4
  %44 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %3, align 8
  %45 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @bus_release_resource(i32 %42, i32 %43, i32 0, i64 %46)
  br label %48

48:                                               ; preds = %41, %36
  ret i32 0
}

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local %struct.mv_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
