; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_radar.c_ar9300_get_dfs_thresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_radar.c_ar9300_get_dfs_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@AR_PHY_RADAR_0 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FIRPWR = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FIRPWR_S = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_RRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_HEIGHT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_PRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_INBAND = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELPWR_THRESH = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELPWR_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELSTEP_THRESH = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELSTEP_CHECK = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_MAXLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_get_dfs_thresh(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %9 = call i32 @OS_REG_READ(%struct.ath_hal* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %12 = call i8* @MS(i32 %10, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %15 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR_S, align 4
  %16 = ashr i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @AR_PHY_RADAR_0_RRSSI, align 4
  %25 = call i8* @MS(i32 %23, i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 10
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @AR_PHY_RADAR_0_HEIGHT, align 4
  %30 = call i8* @MS(i32 %28, i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 9
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @AR_PHY_RADAR_0_PRSSI, align 4
  %35 = call i8* @MS(i32 %33, i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @AR_PHY_RADAR_0_INBAND, align 4
  %40 = call i8* @MS(i32 %38, i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @AR_PHY_RADAR_0_ENA, align 4
  %45 = call i8* @MS(i32 %43, i32 %44)
  %46 = icmp ne i8* %45, null
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %54 = call i32 @OS_REG_READ(%struct.ath_hal* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @AR_PHY_RADAR_1_RELPWR_THRESH, align 4
  %57 = call i8* @MS(i32 %55, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @AR_PHY_RADAR_1_RELPWR_ENA, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @AR_PHY_RADAR_1_RELSTEP_THRESH, align 4
  %71 = call i8* @MS(i32 %69, i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @AR_PHY_RADAR_1_RELSTEP_CHECK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @AR_PHY_RADAR_1_MAXLEN, align 4
  %85 = call i8* @MS(i32 %83, i32 %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i8* @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
