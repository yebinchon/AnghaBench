; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/a10/extr_a10_intc.c_a10_aintc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/a10/extr_a10_intc.c_a10_aintc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10_aintc_softc = type { i32, i32, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not allocate resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"A10 AINTC lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@SW_INT_PROTECTION_REG = common dso_local global i32 0, align 4
@SW_INT_NMI_CTRL_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"could not attach PIC\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a10_aintc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10_aintc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.a10_aintc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.a10_aintc_softc* @device_get_softc(i32 %7)
  store %struct.a10_aintc_softc* %8, %struct.a10_aintc_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SYS_RES_MEMORY, align 4
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i32 @bus_alloc_resource_any(i32 %12, i32 %13, i32* %5, i32 %14)
  %16 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %17 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %19 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %72

25:                                               ; preds = %1
  %26 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %27 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rman_get_bustag(i32 %28)
  %30 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %31 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %33 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rman_get_bushandle(i32 %34)
  %36 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %37 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %39 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %38, i32 0, i32 1
  %40 = load i32, i32* @MTX_SPIN, align 4
  %41 = call i32 @mtx_init(i32* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %54, %25
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @SW_INT_ENABLE_REG(i32 %47)
  %49 = call i32 @aintc_write_4(%struct.a10_aintc_softc* %46, i32 %48, i32 0)
  %50 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @SW_INT_MASK_REG(i32 %51)
  %53 = call i32 @aintc_write_4(%struct.a10_aintc_softc* %50, i32 %52, i32 -1)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %42

57:                                               ; preds = %42
  %58 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %59 = load i32, i32* @SW_INT_PROTECTION_REG, align 4
  %60 = call i32 @aintc_write_4(%struct.a10_aintc_softc* %58, i32 %59, i32 1)
  %61 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %62 = load i32, i32* @SW_INT_NMI_CTRL_REG, align 4
  %63 = call i32 @aintc_write_4(%struct.a10_aintc_softc* %61, i32 %62, i32 0)
  %64 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %65 = call i64 @a10_intr_pic_attach(%struct.a10_aintc_softc* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %2, align 4
  br label %81

71:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %81

72:                                               ; preds = %22
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @SYS_RES_MEMORY, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %4, align 8
  %77 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bus_release_resource(i32 %73, i32 %74, i32 %75, i32 %78)
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %72, %71, %67
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.a10_aintc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @aintc_write_4(%struct.a10_aintc_softc*, i32, i32) #1

declare dso_local i32 @SW_INT_ENABLE_REG(i32) #1

declare dso_local i32 @SW_INT_MASK_REG(i32) #1

declare dso_local i64 @a10_intr_pic_attach(%struct.a10_aintc_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
