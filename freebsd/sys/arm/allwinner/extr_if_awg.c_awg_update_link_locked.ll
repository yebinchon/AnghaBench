; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_update_link_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_update_link_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32, i32, i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@EMAC_BASIC_CTL_0 = common dso_local global i32 0, align 4
@BASIC_CTL_SPEED = common dso_local global i32 0, align 4
@BASIC_CTL_DUPLEX = common dso_local global i32 0, align 4
@BASIC_CTL_SPEED_1000 = common dso_local global i32 0, align 4
@BASIC_CTL_SPEED_SHIFT = common dso_local global i32 0, align 4
@BASIC_CTL_SPEED_100 = common dso_local global i32 0, align 4
@BASIC_CTL_SPEED_10 = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@EMAC_RX_CTL_0 = common dso_local global i32 0, align 4
@RX_FLOW_CTL_EN = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@EMAC_TX_FLOW_CTL = common dso_local global i32 0, align 4
@PAUSE_TIME = common dso_local global i32 0, align 4
@TX_FLOW_CTL_EN = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@awg_pause_time = common dso_local global i32 0, align 4
@PAUSE_TIME_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.awg_softc*)* @awg_update_link_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @awg_update_link_locked(%struct.awg_softc* %0) #0 {
  %2 = alloca %struct.awg_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  store %struct.awg_softc* %0, %struct.awg_softc** %2, align 8
  %5 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %6 = call i32 @AWG_ASSERT_LOCKED(%struct.awg_softc* %5)
  %7 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %8 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @if_getdrvflags(i32 %9)
  %11 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %177

15:                                               ; preds = %1
  %16 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %17 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mii_data* @device_get_softc(i32 %18)
  store %struct.mii_data* %19, %struct.mii_data** %3, align 8
  %20 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %21 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFM_ACTIVE, align 4
  %24 = load i32, i32* @IFM_AVALID, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = load i32, i32* @IFM_ACTIVE, align 4
  %28 = load i32, i32* @IFM_AVALID, align 4
  %29 = or i32 %27, %28
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %15
  %32 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %33 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @IFM_SUBTYPE(i32 %34)
  switch i32 %35, label %39 [
    i32 130, label %36
    i32 131, label %36
    i32 129, label %36
    i32 128, label %36
  ]

36:                                               ; preds = %31, %31, %31, %31
  %37 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %38 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %41 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  br label %46

43:                                               ; preds = %15
  %44 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %45 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %48 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %177

52:                                               ; preds = %46
  %53 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %54 = load i32, i32* @EMAC_BASIC_CTL_0, align 4
  %55 = call i32 @RD4(%struct.awg_softc* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @BASIC_CTL_SPEED, align 4
  %57 = load i32, i32* @BASIC_CTL_DUPLEX, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %63 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @IFM_SUBTYPE(i32 %64)
  %66 = icmp eq i32 %65, 130
  br i1 %66, label %73, label %67

67:                                               ; preds = %52
  %68 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %69 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @IFM_SUBTYPE(i32 %70)
  %72 = icmp eq i32 %71, 131
  br i1 %72, label %73, label %79

73:                                               ; preds = %67, %52
  %74 = load i32, i32* @BASIC_CTL_SPEED_1000, align 4
  %75 = load i32, i32* @BASIC_CTL_SPEED_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %98

79:                                               ; preds = %67
  %80 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %81 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @IFM_SUBTYPE(i32 %82)
  %84 = icmp eq i32 %83, 129
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i32, i32* @BASIC_CTL_SPEED_100, align 4
  %87 = load i32, i32* @BASIC_CTL_SPEED_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %97

91:                                               ; preds = %79
  %92 = load i32, i32* @BASIC_CTL_SPEED_10, align 4
  %93 = load i32, i32* @BASIC_CTL_SPEED_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %91, %85
  br label %98

98:                                               ; preds = %97, %73
  %99 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %100 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @IFM_OPTIONS(i32 %101)
  %103 = load i32, i32* @IFM_FDX, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i32, i32* @BASIC_CTL_DUPLEX, align 4
  %108 = load i32, i32* %4, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %98
  %111 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %112 = load i32, i32* @EMAC_BASIC_CTL_0, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @WR4(%struct.awg_softc* %111, i32 %112, i32 %113)
  %115 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %116 = load i32, i32* @EMAC_RX_CTL_0, align 4
  %117 = call i32 @RD4(%struct.awg_softc* %115, i32 %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* @RX_FLOW_CTL_EN, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %4, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %4, align 4
  %122 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %123 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @IFM_OPTIONS(i32 %124)
  %126 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %110
  %130 = load i32, i32* @RX_FLOW_CTL_EN, align 4
  %131 = load i32, i32* %4, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %129, %110
  %134 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %135 = load i32, i32* @EMAC_RX_CTL_0, align 4
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @WR4(%struct.awg_softc* %134, i32 %135, i32 %136)
  %138 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %139 = load i32, i32* @EMAC_TX_FLOW_CTL, align 4
  %140 = call i32 @RD4(%struct.awg_softc* %138, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* @PAUSE_TIME, align 4
  %142 = load i32, i32* @TX_FLOW_CTL_EN, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %4, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %4, align 4
  %147 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %148 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @IFM_OPTIONS(i32 %149)
  %151 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %133
  %155 = load i32, i32* @TX_FLOW_CTL_EN, align 4
  %156 = load i32, i32* %4, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %154, %133
  %159 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %160 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @IFM_OPTIONS(i32 %161)
  %163 = load i32, i32* @IFM_FDX, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %158
  %167 = load i32, i32* @awg_pause_time, align 4
  %168 = load i32, i32* @PAUSE_TIME_SHIFT, align 4
  %169 = shl i32 %167, %168
  %170 = load i32, i32* %4, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %166, %158
  %173 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %174 = load i32, i32* @EMAC_TX_FLOW_CTL, align 4
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @WR4(%struct.awg_softc* %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %172, %51, %14
  ret void
}

declare dso_local i32 @AWG_ASSERT_LOCKED(%struct.awg_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @RD4(%struct.awg_softc*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @WR4(%struct.awg_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
