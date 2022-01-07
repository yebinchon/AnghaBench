; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk3399_emmcphy.c_rk_emmcphy_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk3399_emmcphy.c_rk_emmcphy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode = type { i32 }
%struct.rk_emmcphy_softc = type { i32, i32*, %struct.rk_emmcphy_conf* }
%struct.rk_emmcphy_conf = type { i32 }
%struct.TYPE_2__ = type { i64 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Phy id: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown phy: %ld\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@PHYCTRL_DR_TY = common dso_local global i32 0, align 4
@GRF_EMMCPHY_CON6 = common dso_local global i32 0, align 4
@PHYCTRL_OTAPDLYENA = common dso_local global i32 0, align 4
@PHYCTRL_OTAPDLYSEL = common dso_local global i32 0, align 4
@GRF_EMMCPHY_CON0 = common dso_local global i32 0, align 4
@PHYCTRL_ENDLL = common dso_local global i32 0, align 4
@PHYCTRL_PDB = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"emmcclk\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cannot get emmcclk clock, continue\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"got emmcclk clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"cannot get clock frequency\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PHYCTRL_FRQSEL_50M = common dso_local global i32 0, align 4
@PHYCTRL_FRQSEL_100M = common dso_local global i32 0, align 4
@PHYCTRL_FRQSEL_150M = common dso_local global i32 0, align 4
@PHYCTRL_FRQSEL_200M = common dso_local global i32 0, align 4
@GRF_EMMCPHY_STATUS = common dso_local global i32 0, align 4
@PHYCTRL_CALDONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"PHY calibration did not complete\0A\00", align 1
@PHYCTRL_FRQSEL = common dso_local global i32 0, align 4
@PHYCTRL_DLLRDY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"DLL loop failed to lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phynode*, i32)* @rk_emmcphy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_emmcphy_enable(%struct.phynode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phynode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rk_emmcphy_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.phynode* %0, %struct.phynode** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.phynode*, %struct.phynode** %4, align 8
  %15 = call i32 @phynode_get_device(%struct.phynode* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.phynode*, %struct.phynode** %4, align 8
  %17 = call i64 @phynode_get_id(%struct.phynode* %16)
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.rk_emmcphy_softc* @device_get_softc(i32 %18)
  store %struct.rk_emmcphy_softc* %19, %struct.rk_emmcphy_softc** %6, align 8
  %20 = load i64, i64* @bootverbose, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @ERANGE, align 4
  store i32 %33, i32* %3, align 4
  br label %219

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load i32, i32* @PHYCTRL_DR_TY, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @PHYCTRL_DR_TY, align 4
  %40 = call i32 @SHIFTIN(i32 0, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %42 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GRF_EMMCPHY_CON6, align 4
  %45 = load i32, i32* %11, align 4
  %46 = shl i32 %45, 16
  %47 = load i32, i32* %12, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @SYSCON_WRITE_4(i32 %43, i32 %44, i32 %48)
  %50 = load i32, i32* @PHYCTRL_OTAPDLYENA, align 4
  %51 = load i32, i32* @PHYCTRL_OTAPDLYSEL, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @PHYCTRL_OTAPDLYENA, align 4
  %54 = load i32, i32* @PHYCTRL_OTAPDLYSEL, align 4
  %55 = call i32 @SHIFTIN(i32 4, i32 %54)
  %56 = or i32 %53, %55
  store i32 %56, i32* %12, align 4
  %57 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %58 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GRF_EMMCPHY_CON0, align 4
  %61 = load i32, i32* %11, align 4
  %62 = shl i32 %61, 16
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @SYSCON_WRITE_4(i32 %59, i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %37, %34
  %67 = load i32, i32* @PHYCTRL_ENDLL, align 4
  %68 = load i32, i32* @PHYCTRL_PDB, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %70 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %71 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @GRF_EMMCPHY_CON6, align 4
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 %74, 16
  %76 = load i32, i32* %12, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @SYSCON_WRITE_4(i32 %72, i32 %73, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %219

82:                                               ; preds = %66
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @compat_data, align 4
  %85 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %83, i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.rk_emmcphy_conf*
  %89 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %90 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %89, i32 0, i32 2
  store %struct.rk_emmcphy_conf* %88, %struct.rk_emmcphy_conf** %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %93 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %92, i32 0, i32 1
  %94 = call i32 @clk_get_by_ofw_name(i32 %91, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32** %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = load i32, i32* %7, align 4
  %99 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %100 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %101 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %100, i32 0, i32 1
  store i32* null, i32** %101, align 8
  br label %105

102:                                              ; preds = %82
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %107 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %112 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @clk_get_freq(i32* %113, i32* %9)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* %7, align 4
  %119 = call i32 (i32, i8*, ...) @device_printf(i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32, i32* @ENXIO, align 4
  store i32 %120, i32* %3, align 4
  br label %219

121:                                              ; preds = %110
  br label %123

122:                                              ; preds = %105
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %122, %121
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %123
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 75000000
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* @PHYCTRL_FRQSEL_50M, align 4
  store i32 %130, i32* %10, align 4
  br label %145

131:                                              ; preds = %126
  %132 = load i32, i32* %9, align 4
  %133 = icmp slt i32 %132, 125000000
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @PHYCTRL_FRQSEL_100M, align 4
  store i32 %135, i32* %10, align 4
  br label %144

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 175000000
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @PHYCTRL_FRQSEL_150M, align 4
  store i32 %140, i32* %10, align 4
  br label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @PHYCTRL_FRQSEL_200M, align 4
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %141, %139
  br label %144

144:                                              ; preds = %143, %134
  br label %145

145:                                              ; preds = %144, %129
  br label %148

146:                                              ; preds = %123
  %147 = load i32, i32* @PHYCTRL_FRQSEL_200M, align 4
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %146, %145
  %149 = call i32 @DELAY(i32 3)
  %150 = load i32, i32* @PHYCTRL_PDB, align 4
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* @PHYCTRL_PDB, align 4
  store i32 %151, i32* %12, align 4
  %152 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %153 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @GRF_EMMCPHY_CON6, align 4
  %156 = load i32, i32* %11, align 4
  %157 = shl i32 %156, 16
  %158 = load i32, i32* %12, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @SYSCON_WRITE_4(i32 %154, i32 %155, i32 %159)
  %161 = call i32 @DELAY(i32 10)
  %162 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %163 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @GRF_EMMCPHY_STATUS, align 4
  %166 = call i32 @SYSCON_READ_4(i32 %164, i32 %165)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* @PHYCTRL_CALDONE, align 4
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %148
  %172 = load i32, i32* %7, align 4
  %173 = call i32 (i32, i8*, ...) @device_printf(i32 %172, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %174 = load i32, i32* @ENXIO, align 4
  store i32 %174, i32* %3, align 4
  br label %219

175:                                              ; preds = %148
  %176 = load i32, i32* @PHYCTRL_FRQSEL, align 4
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @PHYCTRL_FRQSEL, align 4
  %179 = call i32 @SHIFTIN(i32 %177, i32 %178)
  store i32 %179, i32* %12, align 4
  %180 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %181 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @GRF_EMMCPHY_CON0, align 4
  %184 = load i32, i32* %11, align 4
  %185 = shl i32 %184, 16
  %186 = load i32, i32* %12, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @SYSCON_WRITE_4(i32 %182, i32 %183, i32 %187)
  %189 = load i32, i32* @PHYCTRL_ENDLL, align 4
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* @PHYCTRL_ENDLL, align 4
  store i32 %190, i32* %12, align 4
  %191 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %192 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @GRF_EMMCPHY_CON6, align 4
  %195 = load i32, i32* %11, align 4
  %196 = shl i32 %195, 16
  %197 = load i32, i32* %12, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @SYSCON_WRITE_4(i32 %193, i32 %194, i32 %198)
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %218

202:                                              ; preds = %175
  %203 = call i32 @DELAY(i32 50000)
  %204 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %205 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @GRF_EMMCPHY_STATUS, align 4
  %208 = call i32 @SYSCON_READ_4(i32 %206, i32 %207)
  store i32 %208, i32* %12, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* @PHYCTRL_DLLRDY, align 4
  %211 = and i32 %209, %210
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %202
  %214 = load i32, i32* %7, align 4
  %215 = call i32 (i32, i8*, ...) @device_printf(i32 %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %216 = load i32, i32* @ENXIO, align 4
  store i32 %216, i32* %3, align 4
  br label %219

217:                                              ; preds = %202
  br label %218

218:                                              ; preds = %217, %175
  store i32 0, i32* %3, align 4
  br label %219

219:                                              ; preds = %218, %213, %171, %117, %81, %29
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i32 @phynode_get_device(%struct.phynode*) #1

declare dso_local i64 @phynode_get_id(%struct.phynode*) #1

declare dso_local %struct.rk_emmcphy_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @SHIFTIN(i32, i32) #1

declare dso_local i32 @SYSCON_WRITE_4(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32**) #1

declare dso_local i32 @clk_get_freq(i32*, i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @SYSCON_READ_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
