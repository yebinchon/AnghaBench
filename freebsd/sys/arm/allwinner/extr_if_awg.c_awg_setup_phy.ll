; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_setup_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_setup_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i64, i32**, i32* }

@.str = private unnamed_addr constant [9 x i8] c"phy-mode\00", align 1
@_RES_SYSCON = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"PHY type: %s, conf mode: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@EMAC_CLK_PIT = common dso_local global i32 0, align 4
@EMAC_CLK_SRC = common dso_local global i32 0, align 4
@EMAC_CLK_RMII_EN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@EMAC_CLK_PIT_RGMII = common dso_local global i32 0, align 4
@EMAC_CLK_SRC_RGMII = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@EMAC_CLK_PIT_MII = common dso_local global i32 0, align 4
@EMAC_CLK_SRC_MII = common dso_local global i32 0, align 4
@EMAC_CLK_ETXDC = common dso_local global i32 0, align 4
@EMAC_CLK_ERXDC = common dso_local global i32 0, align 4
@EMAC_CLK_ETXDC_SHIFT = common dso_local global i32 0, align 4
@EMAC_CLK_ERXDC_SHIFT = common dso_local global i32 0, align 4
@EMAC_H3 = common dso_local global i64 0, align 8
@EMAC_CLK_EPHY_SELECT = common dso_local global i32 0, align 4
@EMAC_CLK_EPHY_SHUTDOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"allwinner,leds-active-low\00", align 1
@EMAC_CLK_EPHY_LED_POL = common dso_local global i32 0, align 4
@EMAC_CLK_EPHY_ADDR = common dso_local global i32 0, align 4
@EMAC_CLK_EPHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"EMAC clock: 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"emac_int_tx\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"mii_phy_tx\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"cannot get tx clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"cannot get clock '%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"cannot set tx clock parent\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"cannot enable tx clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @awg_setup_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_setup_phy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.awg_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.awg_softc* @device_get_softc(i32 %15)
  store %struct.awg_softc* %16, %struct.awg_softc** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ofw_bus_get_node(i32 %17)
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @OF_getprop_alloc(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %219

23:                                               ; preds = %1
  %24 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %25 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %30 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* @_RES_SYSCON, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %23
  store i32 1, i32* %14, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i64, i64* @bootverbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %46)
  br label %48

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %172

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @syscon_read_emac_clk_reg(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @EMAC_CLK_PIT, align 4
  %55 = load i32, i32* @EMAC_CLK_SRC, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @EMAC_CLK_RMII_EN, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @strncmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %51
  %66 = load i32, i32* @EMAC_CLK_PIT_RGMII, align 4
  %67 = load i32, i32* @EMAC_CLK_SRC_RGMII, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %86

71:                                               ; preds = %51
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @EMAC_CLK_RMII_EN, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %85

79:                                               ; preds = %71
  %80 = load i32, i32* @EMAC_CLK_PIT_MII, align 4
  %81 = load i32, i32* @EMAC_CLK_SRC_MII, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %79, %75
  br label %86

86:                                               ; preds = %85, %65
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @awg_parse_delay(i32 %87, i32* %11, i32* %12)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %215

92:                                               ; preds = %86
  %93 = load i32, i32* @EMAC_CLK_ETXDC, align 4
  %94 = load i32, i32* @EMAC_CLK_ERXDC, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @EMAC_CLK_ETXDC_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %101, %92
  %108 = load i32, i32* %12, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @EMAC_CLK_ERXDC_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %110, %107
  %117 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %118 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @EMAC_H3, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %161

122:                                              ; preds = %116
  %123 = load i32, i32* %3, align 4
  %124 = call i64 @awg_has_internal_phy(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %122
  %127 = load i32, i32* @EMAC_CLK_EPHY_SELECT, align 4
  %128 = load i32, i32* %10, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* @EMAC_CLK_EPHY_SHUTDOWN, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %10, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i64 @OF_hasprop(i32 %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %126
  %138 = load i32, i32* @EMAC_CLK_EPHY_LED_POL, align 4
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %146

141:                                              ; preds = %126
  %142 = load i32, i32* @EMAC_CLK_EPHY_LED_POL, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %10, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %141, %137
  %147 = load i32, i32* @EMAC_CLK_EPHY_ADDR, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %10, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* @EMAC_CLK_EPHY_ADDR_SHIFT, align 4
  %152 = shl i32 1, %151
  %153 = load i32, i32* %10, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %10, align 4
  br label %160

155:                                              ; preds = %122
  %156 = load i32, i32* @EMAC_CLK_EPHY_SELECT, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %10, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %155, %146
  br label %161

161:                                              ; preds = %160, %116
  %162 = load i64, i64* @bootverbose, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 (i32, i8*, ...) @device_printf(i32 %165, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %164, %161
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @syscon_write_emac_clk_reg(i32 %169, i32 %170)
  br label %214

172:                                              ; preds = %48
  %173 = load i8*, i8** %8, align 8
  %174 = call i64 @strncmp(i8* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %178

177:                                              ; preds = %172
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %178

178:                                              ; preds = %177, %176
  %179 = load i32, i32* %3, align 4
  %180 = call i32 @clk_get_by_ofw_name(i32 %179, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32* %5)
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i32, i32* %3, align 4
  %185 = call i32 (i32, i8*, ...) @device_printf(i32 %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %215

186:                                              ; preds = %178
  %187 = load i32, i32* %3, align 4
  %188 = load i8*, i8** %7, align 8
  %189 = call i32 @clk_get_by_name(i32 %187, i8* %188, i32* %6)
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %13, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = load i32, i32* %3, align 4
  %194 = load i8*, i8** %7, align 8
  %195 = call i32 (i32, i8*, ...) @device_printf(i32 %193, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %194)
  br label %215

196:                                              ; preds = %186
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @clk_set_parent_by_clk(i32 %197, i32 %198)
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i32, i32* %3, align 4
  %204 = call i32 (i32, i8*, ...) @device_printf(i32 %203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %215

205:                                              ; preds = %196
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @clk_enable(i32 %206)
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32, i32* %3, align 4
  %212 = call i32 (i32, i8*, ...) @device_printf(i32 %211, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  br label %215

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213, %168
  store i32 0, i32* %13, align 4
  br label %215

215:                                              ; preds = %214, %210, %202, %192, %183, %91
  %216 = load i8*, i8** %8, align 8
  %217 = call i32 @OF_prop_free(i8* %216)
  %218 = load i32, i32* %13, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %215, %22
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local %struct.awg_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @syscon_read_emac_clk_reg(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @awg_parse_delay(i32, i32*, i32*) #1

declare dso_local i64 @awg_has_internal_phy(i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @syscon_write_emac_clk_reg(i32, i32) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_get_by_name(i32, i8*, i32*) #1

declare dso_local i32 @clk_set_parent_by_clk(i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @OF_prop_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
