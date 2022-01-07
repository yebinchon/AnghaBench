; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_fbd.c_bcm_fb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_fbd.c_bcm_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmsc_softc = type { i32 }
%struct.bcm2835_fb_config = type { i64, i64, i64, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@FB_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"changing fb bpp from %d to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"keeping existing fb bpp of %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"bcm2835_mbox_fb_init failed, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcmsc_softc*, %struct.bcm2835_fb_config*)* @bcm_fb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_fb_init(%struct.bcmsc_softc* %0, %struct.bcm2835_fb_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcmsc_softc*, align 8
  %5 = alloca %struct.bcm2835_fb_config*, align 8
  %6 = alloca i32, align 4
  store %struct.bcmsc_softc* %0, %struct.bcmsc_softc** %4, align 8
  store %struct.bcm2835_fb_config* %1, %struct.bcm2835_fb_config** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %8 = call i32 @memset(%struct.bcm2835_fb_config* %7, i32 0, i32 40)
  %9 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %10 = call i64 @bcm2835_mbox_fb_get_w_h(%struct.bcm2835_fb_config* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %3, align 4
  br label %74

14:                                               ; preds = %2
  %15 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %16 = call i64 @bcm2835_mbox_fb_get_bpp(%struct.bcm2835_fb_config* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %74

20:                                               ; preds = %14
  %21 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %22 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FB_DEPTH, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %4, align 8
  %28 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %31 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* @FB_DEPTH, align 8
  %35 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %34)
  %36 = load i64, i64* @FB_DEPTH, align 8
  %37 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %38 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %48

39:                                               ; preds = %20
  %40 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %4, align 8
  %41 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %44 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %39, %26
  %49 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %50 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %53 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %55 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %58 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %60 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %62 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %5, align 8
  %64 = call i32 @bcm2835_mbox_fb_init(%struct.bcm2835_fb_config* %63)
  store i32 %64, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %48
  %67 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %4, align 8
  %68 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %66, %18, %12
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @memset(%struct.bcm2835_fb_config*, i32, i32) #1

declare dso_local i64 @bcm2835_mbox_fb_get_w_h(%struct.bcm2835_fb_config*) #1

declare dso_local i64 @bcm2835_mbox_fb_get_bpp(%struct.bcm2835_fb_config*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @bcm2835_mbox_fb_init(%struct.bcm2835_fb_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
