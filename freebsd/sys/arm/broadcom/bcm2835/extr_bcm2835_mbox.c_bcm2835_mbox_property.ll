; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm2835_mbox_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm2835_mbox_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mbox_softc = type { i32 }
%struct.msg_set_power_state = type opaque
%struct.bcm2835_mbox_hdr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"mbox\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BCM2835_MBOX_CHAN_PROP = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm2835_mbox_property(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bcm_mbox_softc*, align 8
  %7 = alloca %struct.msg_set_power_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = call i32 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = call i32* @devclass_get_device(i32 %14, i32 0)
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %83

20:                                               ; preds = %2
  %21 = load i32*, i32** %12, align 8
  %22 = call %struct.bcm_mbox_softc* @device_get_softc(i32* %21)
  store %struct.bcm_mbox_softc* %22, %struct.bcm_mbox_softc** %6, align 8
  %23 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %6, align 8
  %24 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %23, i32 0, i32 0
  %25 = call i32 @sx_xlock(i32* %24)
  %26 = load i32*, i32** %12, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i8* @bcm2835_mbox_init_dma(i32* %26, i64 %27, i32* %8, i32* %9, i64* %10)
  %29 = bitcast i8* %28 to %struct.msg_set_power_state*
  store %struct.msg_set_power_state* %29, %struct.msg_set_power_state** %7, align 8
  %30 = load %struct.msg_set_power_state*, %struct.msg_set_power_state** %7, align 8
  %31 = icmp eq %struct.msg_set_power_state* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %13, align 4
  br label %78

34:                                               ; preds = %20
  %35 = load %struct.msg_set_power_state*, %struct.msg_set_power_state** %7, align 8
  %36 = bitcast %struct.msg_set_power_state* %35 to i8*
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @memcpy(i8* %36, i8* %37, i64 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %43 = call i32 @bus_dmamap_sync(i32 %40, i32 %41, i32 %42)
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* @BCM2835_MBOX_CHAN_PROP, align 4
  %46 = load i64, i64* %10, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @MBOX_WRITE(i32* %44, i32 %45, i32 %47)
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* @BCM2835_MBOX_CHAN_PROP, align 4
  %51 = call i32 @MBOX_READ(i32* %49, i32 %50, i32* %11)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %55 = call i32 @bus_dmamap_sync(i32 %52, i32 %53, i32 %54)
  %56 = load i8*, i8** %4, align 8
  %57 = load %struct.msg_set_power_state*, %struct.msg_set_power_state** %7, align 8
  %58 = bitcast %struct.msg_set_power_state* %57 to i8*
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @memcpy(i8* %56, i8* %58, i64 %59)
  %61 = load i32*, i32** %12, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = bitcast i8* %64 to %struct.bcm2835_mbox_hdr*
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @bcm2835_mbox_err(i32* %61, i64 %62, i32 %63, %struct.bcm2835_mbox_hdr* %65, i64 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @bus_dmamap_unload(i32 %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.msg_set_power_state*, %struct.msg_set_power_state** %7, align 8
  %73 = bitcast %struct.msg_set_power_state* %72 to i8*
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @bus_dmamem_free(i32 %71, i8* %73, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @bus_dma_tag_destroy(i32 %76)
  br label %78

78:                                               ; preds = %34, %32
  %79 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %6, align 8
  %80 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %79, i32 0, i32 0
  %81 = call i32 @sx_xunlock(i32* %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local %struct.bcm_mbox_softc* @device_get_softc(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i8* @bcm2835_mbox_init_dma(i32*, i64, i32*, i32*, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @MBOX_WRITE(i32*, i32, i32) #1

declare dso_local i32 @MBOX_READ(i32*, i32, i32*) #1

declare dso_local i32 @bcm2835_mbox_err(i32*, i64, i32, %struct.bcm2835_mbox_hdr*, i64) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i8*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
