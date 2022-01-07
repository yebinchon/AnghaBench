; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_snvs.c_snvs_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_snvs.c_snvs_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.snvs_softc = type { i32 }

@SNVS_LPCR = common dso_local global i32 0, align 4
@LPCR_SRTC_ENV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNVS_LPSRTCMR = common dso_local global i32 0, align 4
@SBT_LSB = common dso_local global i32 0, align 4
@SNVS_LPSRTCLR = common dso_local global i32 0, align 4
@CLOCK_DBG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @snvs_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snvs_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.snvs_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.snvs_softc* @device_get_softc(i32 %10)
  store %struct.snvs_softc* %11, %struct.snvs_softc** %6, align 8
  %12 = load %struct.snvs_softc*, %struct.snvs_softc** %6, align 8
  %13 = load i32, i32* @SNVS_LPCR, align 4
  %14 = call i32 @RD4(%struct.snvs_softc* %12, i32 %13)
  %15 = load i32, i32* @LPCR_SRTC_ENV, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %65

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %48, %20
  %22 = load %struct.snvs_softc*, %struct.snvs_softc** %6, align 8
  %23 = load i32, i32* @SNVS_LPSRTCMR, align 4
  %24 = call i32 @RD4(%struct.snvs_softc* %22, i32 %23)
  %25 = load i32, i32* @SBT_LSB, align 4
  %26 = add nsw i32 %25, 32
  %27 = shl i32 %24, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.snvs_softc*, %struct.snvs_softc** %6, align 8
  %29 = load i32, i32* @SNVS_LPSRTCLR, align 4
  %30 = call i32 @RD4(%struct.snvs_softc* %28, i32 %29)
  %31 = load i32, i32* @SBT_LSB, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.snvs_softc*, %struct.snvs_softc** %6, align 8
  %36 = load i32, i32* @SNVS_LPSRTCMR, align 4
  %37 = call i32 @RD4(%struct.snvs_softc* %35, i32 %36)
  %38 = load i32, i32* @SBT_LSB, align 4
  %39 = add nsw i32 %38, 32
  %40 = shl i32 %37, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.snvs_softc*, %struct.snvs_softc** %6, align 8
  %42 = load i32, i32* @SNVS_LPSRTCLR, align 4
  %43 = call i32 @RD4(%struct.snvs_softc* %41, i32 %42)
  %44 = load i32, i32* @SBT_LSB, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %21
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %21, label %52

52:                                               ; preds = %48
  %53 = load %struct.timespec*, %struct.timespec** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @sbttots(i32 %54)
  %56 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = bitcast %struct.timespec* %53 to i8*
  %58 = bitcast %struct.timespec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct.snvs_softc*, %struct.snvs_softc** %6, align 8
  %60 = getelementptr inbounds %struct.snvs_softc, %struct.snvs_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CLOCK_DBG_READ, align 4
  %63 = load %struct.timespec*, %struct.timespec** %5, align 8
  %64 = call i32 @clock_dbgprint_ts(i32 %61, i32 %62, %struct.timespec* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %52, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.snvs_softc* @device_get_softc(i32) #1

declare dso_local i32 @RD4(%struct.snvs_softc*, i32) #1

declare dso_local i32 @sbttots(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clock_dbgprint_ts(i32, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
