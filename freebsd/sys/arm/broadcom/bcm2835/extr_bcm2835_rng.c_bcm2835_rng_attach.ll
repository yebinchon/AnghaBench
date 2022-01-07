; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_rng.c_bcm2835_rng_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_rng.c_bcm2835_rng_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_rng_softc = type { i32, i32, i32, i32*, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sbuf = type { i32 }

@RNG_STALL_COUNT_DEFAULT = common dso_local global i32 0, align 4
@CALLOUT_MPSAFE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bcmrng.2xspeed\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"bcmrng.stall_count\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@SBUF_AUTOEXTEND = common dso_local global i32 0, align 4
@SBUF_INCLUDENUL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"underrun\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Number of FIFO underruns\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"2xspeed\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_bcm2835_rng_2xspeed = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Enable RBG 2X SPEED\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"stall_count\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Number of underruns to assume RNG stall\00", align 1
@hz = common dso_local global i32 0, align 4
@bcm2835_rng_harvest = common dso_local global i32 0, align 4
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@sysctl_bcm2835_rng_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm2835_rng_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_rng_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm2835_rng_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sbuf, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.bcm2835_rng_softc* @device_get_softc(i32 %10)
  store %struct.bcm2835_rng_softc* %11, %struct.bcm2835_rng_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %14 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @RNG_STALL_COUNT_DEFAULT, align 4
  %16 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %17 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %19 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %18, i32 0, i32 0
  %20 = load i32, i32* @CALLOUT_MPSAFE, align 4
  %21 = call i32 @callout_init(i32* %19, i32 %20)
  %22 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %23 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %22, i32 0, i32 4
  %24 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %23)
  %25 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %26 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %25, i32 0, i32 1
  %27 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  store i32 0, i32* %8, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SYS_RES_MEMORY, align 4
  %30 = load i32, i32* @RF_ACTIVE, align 4
  %31 = call i32* @bus_alloc_resource_any(i32 %28, i32 %29, i32* %8, i32 %30)
  %32 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %33 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %35 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @bcm2835_rng_detach(i32 %39)
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %102

42:                                               ; preds = %1
  %43 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %44 = call i32 @bcm2835_rng_start(%struct.bcm2835_rng_softc* %43)
  %45 = load i64, i64* @bootverbose, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load i32, i32* @SBUF_AUTOEXTEND, align 4
  %49 = load i32, i32* @SBUF_INCLUDENUL, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @sbuf_new(%struct.sbuf* %9, i32* null, i32 256, i32 %50)
  %52 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %53 = call i32 @bcm2835_rng_dump_registers(%struct.bcm2835_rng_softc* %52, %struct.sbuf* %9)
  %54 = call i32 @sbuf_trim(%struct.sbuf* %9)
  %55 = call i32 @sbuf_finish(%struct.sbuf* %9)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @sbuf_data(%struct.sbuf* %9)
  %61 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %47
  %63 = call i32 @sbuf_delete(%struct.sbuf* %9)
  br label %64

64:                                               ; preds = %62, %42
  %65 = load i32, i32* %3, align 4
  %66 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %65)
  store %struct.sysctl_ctx_list* %66, %struct.sysctl_ctx_list** %5, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %67)
  store %struct.sysctl_oid* %68, %struct.sysctl_oid** %6, align 8
  %69 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %70 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %71 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %70)
  %72 = load i32, i32* @OID_AUTO, align 4
  %73 = load i32, i32* @CTLFLAG_RD, align 4
  %74 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %75 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %74, i32 0, i32 2
  %76 = call i32 @SYSCTL_ADD_LONG(%struct.sysctl_ctx_list* %69, i32 %71, i32 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32* %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %77 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %78 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %79 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %78)
  %80 = load i32, i32* @OID_AUTO, align 4
  %81 = load i32, i32* @CTLTYPE_INT, align 4
  %82 = load i32, i32* @CTLFLAG_RW, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %85 = load i32, i32* @sysctl_bcm2835_rng_2xspeed, align 4
  %86 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %77, i32 %79, i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %83, %struct.bcm2835_rng_softc* %84, i32 0, i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %87 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %88 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %89 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %88)
  %90 = load i32, i32* @OID_AUTO, align 4
  %91 = load i32, i32* @CTLFLAG_RW, align 4
  %92 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %93 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %92, i32 0, i32 1
  %94 = load i32, i32* @RNG_STALL_COUNT_DEFAULT, align 4
  %95 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %87, i32 %89, i32 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %91, i32* %93, i32 %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %96 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %97 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %96, i32 0, i32 0
  %98 = load i32, i32* @hz, align 4
  %99 = load i32, i32* @bcm2835_rng_harvest, align 4
  %100 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %4, align 8
  %101 = call i32 @callout_reset(i32* %97, i32 %98, i32 %99, %struct.bcm2835_rng_softc* %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %64, %38
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.bcm2835_rng_softc* @device_get_softc(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bcm2835_rng_detach(i32) #1

declare dso_local i32 @bcm2835_rng_start(%struct.bcm2835_rng_softc*) #1

declare dso_local i32 @sbuf_new(%struct.sbuf*, i32*, i32, i32) #1

declare dso_local i32 @bcm2835_rng_dump_registers(%struct.bcm2835_rng_softc*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_trim(%struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_LONG(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.bcm2835_rng_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.bcm2835_rng_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
