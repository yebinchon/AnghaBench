; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.emac_softc* }
%struct.emac_softc = type { i32, i32 }
%struct.mii_data = type { i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @emac_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.emac_softc*, align 8
  %8 = alloca %struct.mii_data*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 2
  %13 = load %struct.emac_softc*, %struct.emac_softc** %12, align 8
  store %struct.emac_softc* %13, %struct.emac_softc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %9, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %99 [
    i32 129, label %17
    i32 132, label %73
    i32 131, label %73
    i32 130, label %88
    i32 128, label %88
  ]

17:                                               ; preds = %3
  %18 = load %struct.emac_softc*, %struct.emac_softc** %7, align 8
  %19 = call i32 @EMAC_LOCK(%struct.emac_softc* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %17
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.emac_softc*, %struct.emac_softc** %7, align 8
  %38 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %36, %39
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = load i32, i32* @IFF_ALLMULTI, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.emac_softc*, %struct.emac_softc** %7, align 8
  %48 = call i32 @emac_set_rx_mode(%struct.emac_softc* %47)
  br label %49

49:                                               ; preds = %46, %33
  br label %53

50:                                               ; preds = %26
  %51 = load %struct.emac_softc*, %struct.emac_softc** %7, align 8
  %52 = call i32 @emac_init_locked(%struct.emac_softc* %51)
  br label %53

53:                                               ; preds = %50, %49
  br label %65

54:                                               ; preds = %17
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.emac_softc*, %struct.emac_softc** %7, align 8
  %63 = call i32 @emac_stop_locked(%struct.emac_softc* %62)
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %53
  %66 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.emac_softc*, %struct.emac_softc** %7, align 8
  %70 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.emac_softc*, %struct.emac_softc** %7, align 8
  %72 = call i32 @EMAC_UNLOCK(%struct.emac_softc* %71)
  br label %104

73:                                               ; preds = %3, %3
  %74 = load %struct.emac_softc*, %struct.emac_softc** %7, align 8
  %75 = call i32 @EMAC_LOCK(%struct.emac_softc* %74)
  %76 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load %struct.emac_softc*, %struct.emac_softc** %7, align 8
  %84 = call i32 @emac_set_rx_mode(%struct.emac_softc* %83)
  br label %85

85:                                               ; preds = %82, %73
  %86 = load %struct.emac_softc*, %struct.emac_softc** %7, align 8
  %87 = call i32 @EMAC_UNLOCK(%struct.emac_softc* %86)
  br label %104

88:                                               ; preds = %3, %3
  %89 = load %struct.emac_softc*, %struct.emac_softc** %7, align 8
  %90 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.mii_data* @device_get_softc(i32 %91)
  store %struct.mii_data* %92, %struct.mii_data** %8, align 8
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %95 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %96 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %95, i32 0, i32 0
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @ifmedia_ioctl(%struct.ifnet* %93, %struct.ifreq* %94, i32* %96, i32 %97)
  store i32 %98, i32* %10, align 4
  br label %104

99:                                               ; preds = %3
  %100 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @ether_ioctl(%struct.ifnet* %100, i32 %101, i64 %102)
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %99, %88, %85, %65
  %105 = load i32, i32* %10, align 4
  ret i32 %105
}

declare dso_local i32 @EMAC_LOCK(%struct.emac_softc*) #1

declare dso_local i32 @emac_set_rx_mode(%struct.emac_softc*) #1

declare dso_local i32 @emac_init_locked(%struct.emac_softc*) #1

declare dso_local i32 @emac_stop_locked(%struct.emac_softc*) #1

declare dso_local i32 @EMAC_UNLOCK(%struct.emac_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
