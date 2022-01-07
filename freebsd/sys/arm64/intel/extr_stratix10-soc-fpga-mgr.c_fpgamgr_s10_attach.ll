; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/intel/extr_stratix10-soc-fpga-mgr.c_fpgamgr_s10_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/intel/extr_stratix10-soc-fpga-mgr.c_fpgamgr_s10_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpgamgr_s10_softc = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32* }
%struct.TYPE_4__ = type { %struct.fpgamgr_s10_softc* }
%struct.TYPE_3__ = type { %struct.fpgamgr_s10_softc* }

@.str = private unnamed_addr constant [8 x i8] c"s10_svc\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@fpga_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"fpga%d\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to create character device.\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fpga_partial%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"s10 fpga\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fpgamgr_s10_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpgamgr_s10_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpgamgr_s10_softc*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.fpgamgr_s10_softc* @device_get_softc(i32 %6)
  store %struct.fpgamgr_s10_softc* %7, %struct.fpgamgr_s10_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %10 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = call i32* @devclass_find(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %79

16:                                               ; preds = %1
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @devclass_get_device(i32* %17, i32 0)
  %19 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %20 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %22 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %79

27:                                               ; preds = %16
  %28 = load i32, i32* @UID_ROOT, align 4
  %29 = load i32, i32* @GID_WHEEL, align 4
  %30 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %31 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_get_unit(i32 %32)
  %34 = call i8* @make_dev(i32* @fpga_cdevsw, i32 0, i32 %28, i32 %29, i32 384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = bitcast i8* %34 to %struct.TYPE_3__*
  %36 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %37 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %36, i32 0, i32 1
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %37, align 8
  %38 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %39 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp eq %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %79

46:                                               ; preds = %27
  %47 = load i32, i32* @UID_ROOT, align 4
  %48 = load i32, i32* @GID_WHEEL, align 4
  %49 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %50 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @device_get_unit(i32 %51)
  %53 = call i8* @make_dev(i32* @fpga_cdevsw, i32 0, i32 %47, i32 %48, i32 384, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_4__*
  %55 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %56 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %55, i32 0, i32 0
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %58 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp eq %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %2, align 4
  br label %79

65:                                               ; preds = %46
  %66 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %67 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %66, i32 0, i32 2
  %68 = call i32 @sx_init(i32* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %69 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %70 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %71 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store %struct.fpgamgr_s10_softc* %69, %struct.fpgamgr_s10_softc** %73, align 8
  %74 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %75 = load %struct.fpgamgr_s10_softc*, %struct.fpgamgr_s10_softc** %4, align 8
  %76 = getelementptr inbounds %struct.fpgamgr_s10_softc, %struct.fpgamgr_s10_softc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store %struct.fpgamgr_s10_softc* %74, %struct.fpgamgr_s10_softc** %78, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %65, %61, %42, %25, %14
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.fpgamgr_s10_softc* @device_get_softc(i32) #1

declare dso_local i32* @devclass_find(i8*) #1

declare dso_local i32* @devclass_get_device(i32*, i32) #1

declare dso_local i8* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
