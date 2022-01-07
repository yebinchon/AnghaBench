; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_rng.c_bcm2835_rng_harvest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_rng.c_bcm2835_rng_harvest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_rng_softc = type { i32*, i32, i32, i32 }

@RNG_STATUS = common dso_local global i32 0, align 4
@RND_VAL_SHIFT = common dso_local global i32 0, align 4
@RND_VAL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"RNG stalled, disabling device\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Too many underruns, resetting\0A\00", align 1
@KTR_DEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: %d words available in RNG FIFO\00", align 1
@RNG_DATA = common dso_local global i32 0, align 4
@RANDOM_PURE_BROADCOM = common dso_local global i32 0, align 4
@RNG_CALLOUT_TICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bcm2835_rng_harvest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_rng_harvest(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bcm2835_rng_softc*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.bcm2835_rng_softc*
  store %struct.bcm2835_rng_softc* %13, %struct.bcm2835_rng_softc** %11, align 8
  %14 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %15 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 2, i32* %5, align 4
  br label %17

17:                                               ; preds = %91, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %95

20:                                               ; preds = %17
  %21 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %22 = load i32, i32* @RNG_STATUS, align 4
  %23 = call i32 @bcm2835_rng_read4(%struct.bcm2835_rng_softc* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RND_VAL_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = load i32, i32* @RND_VAL_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %20
  %32 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %33 = call i32 @bcm2835_rng_stat_inc_underrun(%struct.bcm2835_rng_softc* %32)
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %37 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = icmp sgt i32 %41, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %46 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %50 = call i32 @bcm2835_rng_stop(%struct.bcm2835_rng_softc* %49)
  br label %95

51:                                               ; preds = %40
  %52 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %53 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %57 = call i32 @bcm2835_rng_stop(%struct.bcm2835_rng_softc* %56)
  %58 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %59 = call i32 @bcm2835_rng_start(%struct.bcm2835_rng_softc* %58)
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %31
  br label %91

62:                                               ; preds = %20
  %63 = load i32, i32* @KTR_DEV, align 4
  %64 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %65 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @device_get_nameunit(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @CTR2(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* %5, align 4
  br label %77

75:                                               ; preds = %62
  %76 = load i32, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %8, align 4
  %79 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %80 = load i32, i32* @RNG_DATA, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @bcm2835_rng_read_multi4(%struct.bcm2835_rng_softc* %79, i32 %80, i32* %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %3, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %77, %61
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %5, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %17

95:                                               ; preds = %44, %17
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %104 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @RANDOM_PURE_BROADCOM, align 4
  %108 = call i32 @random_harvest_queue(i32* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %95
  %110 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %111 = getelementptr inbounds %struct.bcm2835_rng_softc, %struct.bcm2835_rng_softc* %110, i32 0, i32 2
  %112 = load i32, i32* @RNG_CALLOUT_TICKS, align 4
  %113 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %11, align 8
  %114 = call i32 @callout_reset(i32* %111, i32 %112, void (i8*)* @bcm2835_rng_harvest, %struct.bcm2835_rng_softc* %113)
  ret void
}

declare dso_local i32 @bcm2835_rng_read4(%struct.bcm2835_rng_softc*, i32) #1

declare dso_local i32 @bcm2835_rng_stat_inc_underrun(%struct.bcm2835_rng_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bcm2835_rng_stop(%struct.bcm2835_rng_softc*) #1

declare dso_local i32 @bcm2835_rng_start(%struct.bcm2835_rng_softc*) #1

declare dso_local i32 @CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bcm2835_rng_read_multi4(%struct.bcm2835_rng_softc*, i32, i32*, i32) #1

declare dso_local i32 @random_harvest_queue(i32*, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.bcm2835_rng_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
