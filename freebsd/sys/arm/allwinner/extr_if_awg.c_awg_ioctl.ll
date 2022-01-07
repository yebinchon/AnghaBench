; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32, i32 }
%struct.mii_data = type { i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@awg_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @awg_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_ioctl(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.awg_softc*, align 8
  %8 = alloca %struct.mii_data*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.awg_softc* @if_getsoftc(i32 %13)
  store %struct.awg_softc* %14, %struct.awg_softc** %7, align 8
  %15 = load %struct.awg_softc*, %struct.awg_softc** %7, align 8
  %16 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mii_data* @device_get_softc(i32 %17)
  store %struct.mii_data* %18, %struct.mii_data** %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = inttoptr i64 %19 to %struct.ifreq*
  store %struct.ifreq* %20, %struct.ifreq** %9, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %151 [
    i32 129, label %22
    i32 133, label %74
    i32 132, label %74
    i32 128, label %88
    i32 131, label %88
    i32 130, label %95
  ]

22:                                               ; preds = %3
  %23 = load %struct.awg_softc*, %struct.awg_softc** %7, align 8
  %24 = call i32 @AWG_LOCK(%struct.awg_softc* %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @if_getflags(i32 %25)
  %27 = load i32, i32* @IFF_UP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @if_getdrvflags(i32 %31)
  %33 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @if_getflags(i32 %37)
  %39 = load %struct.awg_softc*, %struct.awg_softc** %7, align 8
  %40 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %38, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @IFF_PROMISC, align 4
  %45 = load i32, i32* @IFF_ALLMULTI, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.awg_softc*, %struct.awg_softc** %7, align 8
  %51 = call i32 @awg_setup_rxfilter(%struct.awg_softc* %50)
  br label %52

52:                                               ; preds = %49, %36
  br label %56

53:                                               ; preds = %30
  %54 = load %struct.awg_softc*, %struct.awg_softc** %7, align 8
  %55 = call i32 @awg_init_locked(%struct.awg_softc* %54)
  br label %56

56:                                               ; preds = %53, %52
  br label %67

57:                                               ; preds = %22
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @if_getdrvflags(i32 %58)
  %60 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.awg_softc*, %struct.awg_softc** %7, align 8
  %65 = call i32 @awg_stop(%struct.awg_softc* %64)
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %56
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @if_getflags(i32 %68)
  %70 = load %struct.awg_softc*, %struct.awg_softc** %7, align 8
  %71 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.awg_softc*, %struct.awg_softc** %7, align 8
  %73 = call i32 @AWG_UNLOCK(%struct.awg_softc* %72)
  br label %156

74:                                               ; preds = %3, %3
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @if_getdrvflags(i32 %75)
  %77 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.awg_softc*, %struct.awg_softc** %7, align 8
  %82 = call i32 @AWG_LOCK(%struct.awg_softc* %81)
  %83 = load %struct.awg_softc*, %struct.awg_softc** %7, align 8
  %84 = call i32 @awg_setup_rxfilter(%struct.awg_softc* %83)
  %85 = load %struct.awg_softc*, %struct.awg_softc** %7, align 8
  %86 = call i32 @AWG_UNLOCK(%struct.awg_softc* %85)
  br label %87

87:                                               ; preds = %80, %74
  br label %156

88:                                               ; preds = %3, %3
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %91 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %92 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %91, i32 0, i32 0
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @ifmedia_ioctl(i32 %89, %struct.ifreq* %90, i32* %92, i32 %93)
  store i32 %94, i32* %12, align 4
  br label %156

95:                                               ; preds = %3
  %96 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %97 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @if_getcapenable(i32 %99)
  %101 = xor i32 %98, %100
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %95
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %109 = call i32 @if_togglecapenable(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %95
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @IFCAP_RXCSUM, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @IFCAP_RXCSUM, align 4
  %118 = call i32 @if_togglecapenable(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @IFCAP_TXCSUM, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @IFCAP_TXCSUM, align 4
  %127 = call i32 @if_togglecapenable(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %119
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @if_getcapenable(i32 %129)
  %131 = load i32, i32* @IFCAP_TXCSUM, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @CSUM_IP, align 4
  %137 = load i32, i32* @CSUM_UDP, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @CSUM_TCP, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @if_sethwassistbits(i32 %135, i32 %140, i32 0)
  br label %150

142:                                              ; preds = %128
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @CSUM_IP, align 4
  %145 = load i32, i32* @CSUM_UDP, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @CSUM_TCP, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @if_sethwassistbits(i32 %143, i32 0, i32 %148)
  br label %150

150:                                              ; preds = %142, %134
  br label %156

151:                                              ; preds = %3
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load i64, i64* %6, align 8
  %155 = call i32 @ether_ioctl(i32 %152, i32 %153, i64 %154)
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %151, %150, %88, %87, %67
  %157 = load i32, i32* %12, align 4
  ret i32 %157
}

declare dso_local %struct.awg_softc* @if_getsoftc(i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @AWG_LOCK(%struct.awg_softc*) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @awg_setup_rxfilter(%struct.awg_softc*) #1

declare dso_local i32 @awg_init_locked(%struct.awg_softc*) #1

declare dso_local i32 @awg_stop(%struct.awg_softc*) #1

declare dso_local i32 @AWG_UNLOCK(%struct.awg_softc*) #1

declare dso_local i32 @ifmedia_ioctl(i32, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @if_togglecapenable(i32, i32) #1

declare dso_local i32 @if_sethwassistbits(i32, i32, i32) #1

declare dso_local i32 @ether_ioctl(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
