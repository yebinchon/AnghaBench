; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.fv_softc* }
%struct.fv_softc = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@CSR_OPMODE = common dso_local global i32 0, align 4
@OPMODE_PM = common dso_local global i32 0, align 4
@OPMODE_PR = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@FV_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @fv_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fv_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.fv_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 5
  %13 = load %struct.fv_softc*, %struct.fv_softc** %12, align 8
  store %struct.fv_softc* %13, %struct.fv_softc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %8, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %116 [
    i32 129, label %17
    i32 133, label %107
    i32 132, label %107
    i32 131, label %108
    i32 128, label %108
    i32 130, label %115
  ]

17:                                               ; preds = %3
  %18 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %19 = call i32 @FV_LOCK(%struct.fv_softc* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %88

26:                                               ; preds = %17
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %78

33:                                               ; preds = %26
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %38 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %36, %39
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %33
  %45 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %46 = load i32, i32* @CSR_OPMODE, align 4
  %47 = call i32 @CSR_READ_4(%struct.fv_softc* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %49 = load i32, i32* @CSR_OPMODE, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @OPMODE_PM, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @OPMODE_PR, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @CSR_WRITE_4(%struct.fv_softc* %48, i32 %49, i32 %54)
  br label %56

56:                                               ; preds = %44, %33
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %61 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %59, %62
  %64 = load i32, i32* @IFF_ALLMULTI, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %56
  %68 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %69 = load i32, i32* @CSR_OPMODE, align 4
  %70 = call i32 @CSR_READ_4(%struct.fv_softc* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %72 = load i32, i32* @CSR_OPMODE, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @OPMODE_PM, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @CSR_WRITE_4(%struct.fv_softc* %71, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %67, %56
  br label %87

78:                                               ; preds = %26
  %79 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %80 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %85 = call i32 @fv_init_locked(%struct.fv_softc* %84)
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86, %77
  br label %99

88:                                               ; preds = %17
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %97 = call i32 @fv_stop(%struct.fv_softc* %96)
  br label %98

98:                                               ; preds = %95, %88
  br label %99

99:                                               ; preds = %98, %87
  %100 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %101 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %104 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %106 = call i32 @FV_UNLOCK(%struct.fv_softc* %105)
  store i32 0, i32* %9, align 4
  br label %121

107:                                              ; preds = %3, %3
  store i32 0, i32* %9, align 4
  br label %121

108:                                              ; preds = %3, %3
  %109 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %110 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %111 = load %struct.fv_softc*, %struct.fv_softc** %7, align 8
  %112 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @ifmedia_ioctl(%struct.ifnet* %109, %struct.ifreq* %110, i32* %112, i32 %113)
  store i32 %114, i32* %9, align 4
  br label %121

115:                                              ; preds = %3
  store i32 0, i32* %9, align 4
  br label %121

116:                                              ; preds = %3
  %117 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i64, i64* %6, align 8
  %120 = call i32 @ether_ioctl(%struct.ifnet* %117, i32 %118, i64 %119)
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %116, %115, %108, %107, %99
  %122 = load i32, i32* %9, align 4
  ret i32 %122
}

declare dso_local i32 @FV_LOCK(%struct.fv_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.fv_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.fv_softc*, i32, i32) #1

declare dso_local i32 @fv_init_locked(%struct.fv_softc*) #1

declare dso_local i32 @fv_stop(%struct.fv_softc*) #1

declare dso_local i32 @FV_UNLOCK(%struct.fv_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
