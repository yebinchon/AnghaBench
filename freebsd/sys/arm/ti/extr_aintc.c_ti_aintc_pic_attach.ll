; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_aintc.c_ti_aintc_pic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_aintc.c_ti_aintc_pic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_aintc_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.intr_pic = type { i32 }

@INTC_NIRQS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ti_aintc_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_aintc_softc*)* @ti_aintc_pic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_aintc_pic_attach(%struct.ti_aintc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_aintc_softc*, align 8
  %4 = alloca %struct.intr_pic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ti_aintc_softc* %0, %struct.ti_aintc_softc** %3, align 8
  %9 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @device_get_nameunit(i32 %11)
  store i8* %12, i8** %7, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %42, %1
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @INTC_NIRQS, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %18, i64* %24, align 8
  %25 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @intr_isrc_register(i32* %30, i32 %33, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %34, i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %17
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %68

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %13

45:                                               ; preds = %13
  %46 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ofw_bus_get_node(i32 %48)
  %50 = call i64 @OF_xref_from_node(i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call %struct.intr_pic* @intr_pic_register(i32 %53, i64 %54)
  store %struct.intr_pic* %55, %struct.intr_pic** %4, align 8
  %56 = load %struct.intr_pic*, %struct.intr_pic** %4, align 8
  %57 = icmp eq %struct.intr_pic* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %68

60:                                               ; preds = %45
  %61 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ti_aintc_softc, %struct.ti_aintc_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* @ti_aintc_intr, align 4
  %66 = load %struct.ti_aintc_softc*, %struct.ti_aintc_softc** %3, align 8
  %67 = call i32 @intr_pic_claim_root(i32 %63, i64 %64, i32 %65, %struct.ti_aintc_softc* %66, i32 0)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %60, %58, %39
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @intr_isrc_register(i32*, i32, i32, i8*, i8*, i64) #1

declare dso_local i64 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.intr_pic* @intr_pic_register(i32, i64) #1

declare dso_local i32 @intr_pic_claim_root(i32, i64, i32, %struct.ti_aintc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
