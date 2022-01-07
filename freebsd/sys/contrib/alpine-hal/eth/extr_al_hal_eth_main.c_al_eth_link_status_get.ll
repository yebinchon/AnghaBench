; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_link_status_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_link_status_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.al_eth_link_status = type { i32, i8*, i8* }

@AL_FALSE = common dso_local global i8* null, align 8
@AL_TRUE = common dso_local global i8* null, align 8
@ETH_MAC_KR_PCS_BASE_R_STATUS2 = common dso_local global i32 0, align 4
@ETH_MAC_GEN_MAC_10G_STAT_REM_FAULT = common dso_local global i32 0, align 4
@ETH_MAC_GEN_MAC_10G_STAT_LOC_FAULT = common dso_local global i32 0, align 4
@AL_ETH_MAC_MODE_SGMII = common dso_local global i64 0, align 8
@AL_ETH_MAC_MODE_RGMII = common dso_local global i64 0, align 8
@AL_ETH_MAC_MODE_XLG_LL_25G = common dso_local global i64 0, align 8
@ETH_MAC_GEN_V3_MAC_40G_LL_STATUS_REM_FAULT = common dso_local global i32 0, align 4
@ETH_MAC_GEN_V3_MAC_40G_LL_STATUS_LOC_FAULT = common dso_local global i32 0, align 4
@AL_ETH_MAC_MODE_XLG_LL_40G = common dso_local global i64 0, align 8
@AL_ETH_MAC_MODE_XLG_LL_50G = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[%s]: mac %s port. link_status: %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LINK_UP\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"LINK_DOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_link_status_get(%struct.al_hal_eth_adapter* %0, %struct.al_eth_link_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca %struct.al_eth_link_status*, align 8
  %6 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store %struct.al_eth_link_status* %1, %struct.al_eth_link_status** %5, align 8
  %7 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @AL_ETH_IS_10G_MAC(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @AL_ETH_IS_25G_MAC(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %94

18:                                               ; preds = %12, %2
  %19 = load i8*, i8** @AL_FALSE, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %22 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** @AL_TRUE, align 8
  %24 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %25 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @AL_TRUE, align 8
  %27 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %28 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %29, i32 0, i32 2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* @ETH_MAC_KR_PCS_BASE_R_STATUS2, align 4
  %35 = call i32 @al_reg_write32(i32* %33, i32 %34)
  %36 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %36, i32 0, i32 2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i32 @al_reg_read32(i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @AL_BIT(i32 15)
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %18
  %47 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %47, i32 0, i32 2
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = call i32 @al_reg_read32(i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ETH_MAC_GEN_MAC_10G_STAT_REM_FAULT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i8*, i8** @AL_TRUE, align 8
  br label %61

59:                                               ; preds = %46
  %60 = load i8*, i8** @AL_FALSE, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i8* [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %64 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ETH_MAC_GEN_MAC_10G_STAT_LOC_FAULT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i8*, i8** @AL_TRUE, align 8
  br label %73

71:                                               ; preds = %61
  %72 = load i8*, i8** @AL_FALSE, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i8* [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %76 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %78 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** @AL_FALSE, align 8
  %81 = icmp eq i8* %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %84 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** @AL_FALSE, align 8
  %87 = icmp eq i8* %85, %86
  br label %88

88:                                               ; preds = %82, %73
  %89 = phi i1 [ false, %73 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  %91 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %92 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %18
  br label %307

94:                                               ; preds = %12
  %95 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %96 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AL_ETH_MAC_MODE_SGMII, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %149

100:                                              ; preds = %94
  %101 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %102 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %101, i32 0, i32 2
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = call i32 @al_reg_write32(i32* %105, i32 1)
  %107 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %108 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %107, i32 0, i32 2
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = call i32 @al_reg_read32(i32* %111)
  store i32 %112, i32* %6, align 4
  %113 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %114 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %113, i32 0, i32 2
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = call i32 @al_reg_read32(i32* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i8*, i8** @AL_FALSE, align 8
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %122 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @AL_BIT(i32 2)
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %100
  %128 = load i8*, i8** @AL_TRUE, align 8
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %131 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %127, %100
  %133 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %134 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = call i32 @al_reg_read32(i32* %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @AL_BIT(i32 3)
  %141 = and i32 %139, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %132
  %144 = load i8*, i8** @AL_FALSE, align 8
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %147 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %143, %132
  br label %306

149:                                              ; preds = %94
  %150 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %151 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @AL_ETH_MAC_MODE_RGMII, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %176

155:                                              ; preds = %149
  %156 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %157 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %156, i32 0, i32 2
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = call i32 @al_reg_read32(i32* %160)
  store i32 %161, i32* %6, align 4
  %162 = load i8*, i8** @AL_FALSE, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %165 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @AL_BIT(i32 4)
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %155
  %171 = load i8*, i8** @AL_TRUE, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %174 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %170, %155
  br label %305

176:                                              ; preds = %149
  %177 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %178 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @AL_ETH_MAC_MODE_XLG_LL_25G, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %254

182:                                              ; preds = %176
  %183 = load i8*, i8** @AL_FALSE, align 8
  %184 = ptrtoint i8* %183 to i32
  %185 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %186 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load i8*, i8** @AL_TRUE, align 8
  %188 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %189 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** @AL_TRUE, align 8
  %191 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %192 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  %193 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %194 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %193, i32 0, i32 2
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = call i32 @al_reg_read32(i32* %197)
  store i32 %198, i32* %6, align 4
  %199 = load i8*, i8** @AL_FALSE, align 8
  %200 = ptrtoint i8* %199 to i32
  %201 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %202 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* %6, align 4
  %204 = and i32 %203, 15
  %205 = icmp eq i32 %204, 15
  br i1 %205, label %206, label %253

206:                                              ; preds = %182
  %207 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %208 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %207, i32 0, i32 2
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = call i32 @al_reg_read32(i32* %211)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @ETH_MAC_GEN_V3_MAC_40G_LL_STATUS_REM_FAULT, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %206
  %218 = load i8*, i8** @AL_TRUE, align 8
  br label %221

219:                                              ; preds = %206
  %220 = load i8*, i8** @AL_FALSE, align 8
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi i8* [ %218, %217 ], [ %220, %219 ]
  %223 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %224 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %223, i32 0, i32 2
  store i8* %222, i8** %224, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @ETH_MAC_GEN_V3_MAC_40G_LL_STATUS_LOC_FAULT, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %221
  %230 = load i8*, i8** @AL_TRUE, align 8
  br label %233

231:                                              ; preds = %221
  %232 = load i8*, i8** @AL_FALSE, align 8
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i8* [ %230, %229 ], [ %232, %231 ]
  %235 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %236 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %235, i32 0, i32 1
  store i8* %234, i8** %236, align 8
  %237 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %238 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %237, i32 0, i32 2
  %239 = load i8*, i8** %238, align 8
  %240 = load i8*, i8** @AL_FALSE, align 8
  %241 = icmp eq i8* %239, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %233
  %243 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %244 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = load i8*, i8** @AL_FALSE, align 8
  %247 = icmp eq i8* %245, %246
  br label %248

248:                                              ; preds = %242, %233
  %249 = phi i1 [ false, %233 ], [ %247, %242 ]
  %250 = zext i1 %249 to i32
  %251 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %252 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 8
  br label %253

253:                                              ; preds = %248, %182
  br label %304

254:                                              ; preds = %176
  %255 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %256 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @AL_ETH_MAC_MODE_XLG_LL_40G, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %266, label %260

260:                                              ; preds = %254
  %261 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %262 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @AL_ETH_MAC_MODE_XLG_LL_50G, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %300

266:                                              ; preds = %260, %254
  %267 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %268 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %267, i32 0, i32 2
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = call i32 @al_reg_read32(i32* %271)
  store i32 %272, i32* %6, align 4
  %273 = load i8*, i8** @AL_FALSE, align 8
  %274 = ptrtoint i8* %273 to i32
  %275 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %276 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  %277 = load i32, i32* %6, align 4
  %278 = and i32 %277, 31
  %279 = icmp eq i32 %278, 31
  br i1 %279, label %280, label %299

280:                                              ; preds = %266
  %281 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %282 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %281, i32 0, i32 2
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = call i32 @al_reg_read32(i32* %285)
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* @ETH_MAC_GEN_V3_MAC_40G_LL_STATUS_REM_FAULT, align 4
  %289 = load i32, i32* @ETH_MAC_GEN_V3_MAC_40G_LL_STATUS_LOC_FAULT, align 4
  %290 = or i32 %288, %289
  %291 = and i32 %287, %290
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %280
  %294 = load i8*, i8** @AL_TRUE, align 8
  %295 = ptrtoint i8* %294 to i32
  %296 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %297 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  br label %298

298:                                              ; preds = %293, %280
  br label %299

299:                                              ; preds = %298, %266
  br label %303

300:                                              ; preds = %260
  %301 = load i32, i32* @EPERM, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %3, align 4
  br label %325

303:                                              ; preds = %299
  br label %304

304:                                              ; preds = %303, %253
  br label %305

305:                                              ; preds = %304, %175
  br label %306

306:                                              ; preds = %305, %148
  br label %307

307:                                              ; preds = %306, %93
  %308 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %309 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %312 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @al_eth_mac_mode_str(i64 %313)
  %315 = load %struct.al_eth_link_status*, %struct.al_eth_link_status** %5, align 8
  %316 = getelementptr inbounds %struct.al_eth_link_status, %struct.al_eth_link_status* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = inttoptr i64 %318 to i8*
  %320 = load i8*, i8** @AL_TRUE, align 8
  %321 = icmp eq i8* %319, %320
  %322 = zext i1 %321 to i64
  %323 = select i1 %321, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %324 = call i32 @al_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %310, i32 %314, i8* %323)
  store i32 0, i32* %3, align 4
  br label %325

325:                                              ; preds = %307, %300
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local i64 @AL_ETH_IS_10G_MAC(i64) #1

declare dso_local i64 @AL_ETH_IS_25G_MAC(i64) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @AL_BIT(i32) #1

declare dso_local i32 @al_dbg(i8*, i32, i32, i8*) #1

declare dso_local i32 @al_eth_mac_mode_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
