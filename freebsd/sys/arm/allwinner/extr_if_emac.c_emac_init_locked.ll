; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_softc = type { i32, i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EMAC_RX_CTL = common dso_local global i32 0, align 4
@EMAC_RX_FLUSH_FIFO = common dso_local global i32 0, align 4
@EMAC_MAC_CTL0 = common dso_local global i32 0, align 4
@EMAC_MAC_CTL0_SOFT_RST = common dso_local global i32 0, align 4
@EMAC_MAC_MCFG = common dso_local global i32 0, align 4
@EMAC_RX_FBC = common dso_local global i32 0, align 4
@EMAC_INT_CTL = common dso_local global i32 0, align 4
@EMAC_INT_STA = common dso_local global i32 0, align 4
@EMAC_TX_MODE = common dso_local global i32 0, align 4
@EMAC_TX_AB_M = common dso_local global i32 0, align 4
@EMAC_TX_TM = common dso_local global i32 0, align 4
@EMAC_RX_SETUP = common dso_local global i32 0, align 4
@EMAC_RX_TM = common dso_local global i32 0, align 4
@EMAC_MAC_CTL0_SETUP = common dso_local global i32 0, align 4
@EMAC_MAC_CTL1 = common dso_local global i32 0, align 4
@EMAC_MAC_CTL1_SETUP = common dso_local global i32 0, align 4
@EMAC_MAC_IPGT = common dso_local global i32 0, align 4
@EMAC_MAC_IPGT_FD = common dso_local global i32 0, align 4
@EMAC_MAC_IPGR = common dso_local global i32 0, align 4
@EMAC_MAC_NBTB_IPG2 = common dso_local global i32 0, align 4
@EMAC_MAC_NBTB_IPG1 = common dso_local global i32 0, align 4
@EMAC_MAC_CLRT = common dso_local global i32 0, align 4
@EMAC_MAC_RM = common dso_local global i32 0, align 4
@EMAC_MAC_CW = common dso_local global i32 0, align 4
@EMAC_MAC_MAXF = common dso_local global i32 0, align 4
@EMAC_MAC_MFL = common dso_local global i32 0, align 4
@EMAC_MAC_A1 = common dso_local global i32 0, align 4
@EMAC_MAC_A0 = common dso_local global i32 0, align 4
@EMAC_INT_EN = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@emac_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_softc*)* @emac_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_init_locked(%struct.emac_softc* %0) #0 {
  %2 = alloca %struct.emac_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.emac_softc* %0, %struct.emac_softc** %2, align 8
  %7 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %8 = call i32 @EMAC_ASSERT_LOCKED(%struct.emac_softc* %7)
  %9 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %10 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %9, i32 0, i32 3
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %206

19:                                               ; preds = %1
  %20 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %21 = load i32, i32* @EMAC_RX_CTL, align 4
  %22 = call i32 @EMAC_READ_REG(%struct.emac_softc* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @EMAC_RX_FLUSH_FIFO, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %27 = load i32, i32* @EMAC_RX_CTL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %26, i32 %27, i32 %28)
  %30 = call i32 @DELAY(i32 1)
  %31 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %32 = load i32, i32* @EMAC_MAC_CTL0, align 4
  %33 = call i32 @EMAC_READ_REG(%struct.emac_softc* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @EMAC_MAC_CTL0_SOFT_RST, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %39 = load i32, i32* @EMAC_MAC_CTL0, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %43 = load i32, i32* @EMAC_MAC_MCFG, align 4
  %44 = call i32 @EMAC_READ_REG(%struct.emac_softc* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, -61
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, 52
  store i32 %48, i32* %5, align 4
  %49 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %50 = load i32, i32* @EMAC_MAC_MCFG, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %49, i32 %50, i32 %51)
  %53 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %54 = load i32, i32* @EMAC_RX_FBC, align 4
  %55 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %53, i32 %54, i32 0)
  %56 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %57 = load i32, i32* @EMAC_INT_CTL, align 4
  %58 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %56, i32 %57, i32 0)
  %59 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %60 = load i32, i32* @EMAC_INT_STA, align 4
  %61 = call i32 @EMAC_READ_REG(%struct.emac_softc* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %63 = load i32, i32* @EMAC_INT_STA, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %62, i32 %63, i32 %64)
  %66 = call i32 @DELAY(i32 1)
  %67 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %68 = load i32, i32* @EMAC_TX_MODE, align 4
  %69 = call i32 @EMAC_READ_REG(%struct.emac_softc* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @EMAC_TX_AB_M, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @EMAC_TX_TM, align 4
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %77 = load i32, i32* @EMAC_TX_MODE, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %76, i32 %77, i32 %78)
  %80 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %81 = load i32, i32* @EMAC_RX_CTL, align 4
  %82 = call i32 @EMAC_READ_REG(%struct.emac_softc* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @EMAC_RX_SETUP, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @EMAC_RX_TM, align 4
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %90 = load i32, i32* @EMAC_RX_CTL, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %89, i32 %90, i32 %91)
  %93 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %94 = load i32, i32* @EMAC_MAC_CTL0, align 4
  %95 = call i32 @EMAC_READ_REG(%struct.emac_softc* %93, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @EMAC_MAC_CTL0_SETUP, align 4
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %100 = load i32, i32* @EMAC_MAC_CTL0, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %99, i32 %100, i32 %101)
  %103 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %104 = load i32, i32* @EMAC_MAC_CTL1, align 4
  %105 = call i32 @EMAC_READ_REG(%struct.emac_softc* %103, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* @EMAC_MAC_CTL1_SETUP, align 4
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %5, align 4
  %109 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %110 = load i32, i32* @EMAC_MAC_CTL1, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %109, i32 %110, i32 %111)
  %113 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %114 = load i32, i32* @EMAC_MAC_IPGT, align 4
  %115 = load i32, i32* @EMAC_MAC_IPGT_FD, align 4
  %116 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %113, i32 %114, i32 %115)
  %117 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %118 = load i32, i32* @EMAC_MAC_IPGR, align 4
  %119 = load i32, i32* @EMAC_MAC_NBTB_IPG2, align 4
  %120 = load i32, i32* @EMAC_MAC_NBTB_IPG1, align 4
  %121 = shl i32 %120, 8
  %122 = or i32 %119, %121
  %123 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %117, i32 %118, i32 %122)
  %124 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %125 = load i32, i32* @EMAC_MAC_CLRT, align 4
  %126 = load i32, i32* @EMAC_MAC_RM, align 4
  %127 = load i32, i32* @EMAC_MAC_CW, align 4
  %128 = shl i32 %127, 8
  %129 = or i32 %126, %128
  %130 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %124, i32 %125, i32 %129)
  %131 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %132 = load i32, i32* @EMAC_MAC_MAXF, align 4
  %133 = load i32, i32* @EMAC_MAC_MFL, align 4
  %134 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %131, i32 %132, i32 %133)
  %135 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %136 = call i32* @IF_LLADDR(%struct.ifnet* %135)
  store i32* %136, i32** %6, align 8
  %137 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %138 = load i32, i32* @EMAC_MAC_A1, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 16
  %143 = load i32*, i32** %6, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 8
  %147 = or i32 %142, %146
  %148 = load i32*, i32** %6, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %147, %150
  %152 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %137, i32 %138, i32 %151)
  %153 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %154 = load i32, i32* @EMAC_MAC_A0, align 4
  %155 = load i32*, i32** %6, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 16
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 8
  %163 = or i32 %158, %162
  %164 = load i32*, i32** %6, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 5
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %163, %166
  %168 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %153, i32 %154, i32 %167)
  %169 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %170 = call i32 @emac_set_rx_mode(%struct.emac_softc* %169)
  %171 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %172 = load i32, i32* @EMAC_INT_CTL, align 4
  %173 = call i32 @EMAC_READ_REG(%struct.emac_softc* %171, i32 %172)
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* @EMAC_INT_EN, align 4
  %175 = load i32, i32* %5, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %5, align 4
  %177 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %178 = load i32, i32* @EMAC_INT_CTL, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %177, i32 %178, i32 %179)
  %181 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %182 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %183 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %189 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %193 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %192, i32 0, i32 2
  store i64 0, i64* %193, align 8
  %194 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %195 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call %struct.mii_data* @device_get_softc(i32 %196)
  store %struct.mii_data* %197, %struct.mii_data** %4, align 8
  %198 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %199 = call i32 @mii_mediachg(%struct.mii_data* %198)
  %200 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %201 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %200, i32 0, i32 0
  %202 = load i32, i32* @hz, align 4
  %203 = load i32, i32* @emac_tick, align 4
  %204 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %205 = call i32 @callout_reset(i32* %201, i32 %202, i32 %203, %struct.emac_softc* %204)
  br label %206

206:                                              ; preds = %19, %18
  ret void
}

declare dso_local i32 @EMAC_ASSERT_LOCKED(%struct.emac_softc*) #1

declare dso_local i32 @EMAC_READ_REG(%struct.emac_softc*, i32) #1

declare dso_local i32 @EMAC_WRITE_REG(%struct.emac_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @emac_set_rx_mode(%struct.emac_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.emac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
