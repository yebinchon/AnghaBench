; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_power_control_override.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_power_control_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_12__, %struct.TYPE_11__, i32*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }

@AR_PHY_TPC_11_B0 = common dso_local global i32 0, align 4
@AR_PHY_TPC_OLPC_GAIN_DELTA_S = common dso_local global i32 0, align 4
@AR_PHY_TPC_OLPC_GAIN_DELTA = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B2 = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_B0 = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_ERROR_EST_MODE_S = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_ERROR_EST_MODE = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_B1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_B2 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_ALPHA_THERM = common dso_local global i32 0, align 4
@AR_SCORPION_PHY_TPC_19_B1 = common dso_local global i32 0, align 4
@AR_SCORPION_PHY_TPC_19_B2 = common dso_local global i32 0, align 4
@AR_PHY_TPC_18 = common dso_local global i32 0, align 4
@AR_PHY_TPC_18_THERM_CAL_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_power_control_override(%struct.ath_hal* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca [8 x i32], align 16
  %16 = alloca [8 x i32], align 16
  %17 = alloca [3 x i32], align 4
  %18 = alloca [3 x i32], align 4
  %19 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %21 = call %struct.TYPE_14__* @AH9300(%struct.ath_hal* %20)
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %14, align 8
  %23 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %24 = load i32, i32* @AR_PHY_TPC_11_B0, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA_S, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA, align 4
  %31 = call i32 @OS_REG_RMW(%struct.ath_hal* %23, i32 %24, i32 %29, i32 %30)
  %32 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %33 = call i32 @AR_SREV_POSEIDON(%struct.ath_hal* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %67, label %35

35:                                               ; preds = %5
  %36 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %37 = load i32, i32* @AR_PHY_TPC_11_B1, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA_S, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA, align 4
  %44 = call i32 @OS_REG_RMW(%struct.ath_hal* %36, i32 %37, i32 %42, i32 %43)
  %45 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %46 = call i32 @AR_SREV_WASP(%struct.ath_hal* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %35
  %49 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %50 = call i32 @AR_SREV_JUPITER(%struct.ath_hal* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %48
  %53 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %54 = call i32 @AR_SREV_HONEYBEE(%struct.ath_hal* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %52
  %57 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %58 = load i32, i32* @AR_PHY_TPC_11_B2, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA_S, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA, align 4
  %65 = call i32 @OS_REG_RMW(%struct.ath_hal* %57, i32 %58, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %56, %52, %48, %35
  br label %67

67:                                               ; preds = %66, %5
  %68 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %69 = load i32, i32* @AR_PHY_TPC_6_B0, align 4
  %70 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE_S, align 4
  %71 = shl i32 3, %70
  %72 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE, align 4
  %73 = call i32 @OS_REG_RMW(%struct.ath_hal* %68, i32 %69, i32 %71, i32 %72)
  %74 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %75 = call i32 @AR_SREV_POSEIDON(%struct.ath_hal* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %103, label %77

77:                                               ; preds = %67
  %78 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %79 = load i32, i32* @AR_PHY_TPC_6_B1, align 4
  %80 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE_S, align 4
  %81 = shl i32 3, %80
  %82 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE, align 4
  %83 = call i32 @OS_REG_RMW(%struct.ath_hal* %78, i32 %79, i32 %81, i32 %82)
  %84 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %85 = call i32 @AR_SREV_WASP(%struct.ath_hal* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %77
  %88 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %89 = call i32 @AR_SREV_JUPITER(%struct.ath_hal* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %87
  %92 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %93 = call i32 @AR_SREV_HONEYBEE(%struct.ath_hal* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %91
  %96 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %97 = load i32, i32* @AR_PHY_TPC_6_B2, align 4
  %98 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE_S, align 4
  %99 = shl i32 3, %98
  %100 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE, align 4
  %101 = call i32 @OS_REG_RMW(%struct.ath_hal* %96, i32 %97, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %95, %91, %87, %77
  br label %103

103:                                              ; preds = %102, %67
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 4000
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %11, align 4
  br label %271

111:                                              ; preds = %103
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, 32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %153

118:                                              ; preds = %111
  store i32 0, i32* %19, align 4
  br label %119

119:                                              ; preds = %145, %118
  %120 = load i32, i32* %19, align 4
  %121 = icmp slt i32 %120, 8
  br i1 %121, label %122, label %148

122:                                              ; preds = %119
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %132
  store i32 %130, i32* %133, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %19, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @FBIN2FREQ(i32 %140, i32 0)
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %143
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %122
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %19, align 4
  br label %119

148:                                              ; preds = %119
  %149 = load i32, i32* %7, align 4
  %150 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %152 = call i32 @interpolate(i32 %149, i32* %150, i32* %151, i32 8)
  store i32 %152, i32* %11, align 4
  br label %270

153:                                              ; preds = %111
  %154 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %155 = call i32 @AR_SREV_SCORPION(%struct.ath_hal* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %192, label %157

157:                                              ; preds = %153
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %157
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  store i32 %167, i32* %168, align 16
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  store i32 5180, i32* %169, align 16
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  store i32 %173, i32* %174, align 4
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  store i32 5500, i32* %175, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  store i32 %179, i32* %180, align 8
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 2
  store i32 5785, i32* %181, align 8
  %182 = load i32, i32* %7, align 4
  %183 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %184 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %185 = call i32 @interpolate(i32 %182, i32* %183, i32* %184, i32 3)
  store i32 %185, i32* %11, align 4
  br label %191

186:                                              ; preds = %157
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %186, %163
  br label %269

192:                                              ; preds = %153
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  store i32 %198, i32* %199, align 16
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 3
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  store i32 %205, i32* %206, align 4
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 4
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  store i32 %212, i32* %213, align 4
  %214 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  store i32 5180, i32* %214, align 16
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  store i32 %218, i32* %219, align 4
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  store i32 %225, i32* %226, align 4
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  store i32 %232, i32* %233, align 4
  %234 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  store i32 5500, i32* %234, align 4
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 5
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  store i32 %240, i32* %241, align 8
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 6
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  store i32 %247, i32* %248, align 4
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 7
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  store i32 %254, i32* %255, align 4
  %256 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 2
  store i32 5785, i32* %256, align 8
  %257 = load i32, i32* %7, align 4
  %258 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %259 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %260 = call i32 @interpolate(i32 %257, i32* %258, i32* %259, i32 3)
  store i32 %260, i32* %11, align 4
  %261 = load i32, i32* %7, align 4
  %262 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %264 = call i32 @interpolate(i32 %261, i32* %262, i32* %263, i32 3)
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %7, align 4
  %266 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %267 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %268 = call i32 @interpolate(i32 %265, i32* %266, i32* %267, i32 3)
  store i32 %268, i32* %13, align 4
  br label %269

269:                                              ; preds = %192, %191
  br label %270

270:                                              ; preds = %269, %148
  br label %271

271:                                              ; preds = %270, %106
  %272 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %273 = call i32 @AR_SREV_SCORPION(%struct.ath_hal* %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %285, label %275

275:                                              ; preds = %271
  %276 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %277 = call i32 @AR_SREV_HONEYBEE(%struct.ath_hal* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %275
  %280 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %281 = load i32, i32* @AR_PHY_TPC_19, align 4
  %282 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %283 = load i32, i32* %11, align 4
  %284 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %280, i32 %281, i32 %282, i32 %283)
  br label %438

285:                                              ; preds = %275, %271
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, 1
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %394

292:                                              ; preds = %285
  %293 = load i32, i32* %7, align 4
  %294 = icmp slt i32 %293, 4000
  br i1 %294, label %295, label %347

295:                                              ; preds = %292
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = and i32 %299, 240
  %301 = ashr i32 %300, 4
  %302 = and i32 %301, 1
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %295
  %305 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %306 = load i32, i32* @AR_PHY_TPC_19, align 4
  %307 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %305, i32 %306, i32 %307, i32 %311)
  br label %313

313:                                              ; preds = %304, %295
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = and i32 %317, 240
  %319 = ashr i32 %318, 4
  %320 = and i32 %319, 2
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %313
  %323 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %324 = load i32, i32* @AR_SCORPION_PHY_TPC_19_B1, align 4
  %325 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %326 = load i32, i32* %11, align 4
  %327 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %323, i32 %324, i32 %325, i32 %326)
  br label %328

328:                                              ; preds = %322, %313
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = and i32 %332, 240
  %334 = ashr i32 %333, 4
  %335 = and i32 %334, 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %346

337:                                              ; preds = %328
  %338 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %339 = load i32, i32* @AR_SCORPION_PHY_TPC_19_B2, align 4
  %340 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %338, i32 %339, i32 %340, i32 %344)
  br label %346

346:                                              ; preds = %337, %328
  br label %393

347:                                              ; preds = %292
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = and i32 %351, 240
  %353 = ashr i32 %352, 4
  %354 = and i32 %353, 1
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %347
  %357 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %358 = load i32, i32* @AR_PHY_TPC_19, align 4
  %359 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %360 = load i32, i32* %11, align 4
  %361 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %357, i32 %358, i32 %359, i32 %360)
  br label %362

362:                                              ; preds = %356, %347
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = and i32 %366, 240
  %368 = ashr i32 %367, 4
  %369 = and i32 %368, 2
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %362
  %372 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %373 = load i32, i32* @AR_SCORPION_PHY_TPC_19_B1, align 4
  %374 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %375 = load i32, i32* %12, align 4
  %376 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %372, i32 %373, i32 %374, i32 %375)
  br label %377

377:                                              ; preds = %371, %362
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = and i32 %381, 240
  %383 = ashr i32 %382, 4
  %384 = and i32 %383, 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %377
  %387 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %388 = load i32, i32* @AR_SCORPION_PHY_TPC_19_B2, align 4
  %389 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %390 = load i32, i32* %13, align 4
  %391 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %387, i32 %388, i32 %389, i32 %390)
  br label %392

392:                                              ; preds = %386, %377
  br label %393

393:                                              ; preds = %392, %346
  br label %437

394:                                              ; preds = %285
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = and i32 %398, 240
  %400 = ashr i32 %399, 4
  %401 = and i32 %400, 1
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %408

403:                                              ; preds = %394
  %404 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %405 = load i32, i32* @AR_PHY_TPC_19, align 4
  %406 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %407 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %404, i32 %405, i32 %406, i32 0)
  br label %408

408:                                              ; preds = %403, %394
  %409 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = and i32 %412, 240
  %414 = ashr i32 %413, 4
  %415 = and i32 %414, 2
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %408
  %418 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %419 = load i32, i32* @AR_SCORPION_PHY_TPC_19_B1, align 4
  %420 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %421 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %418, i32 %419, i32 %420, i32 0)
  br label %422

422:                                              ; preds = %417, %408
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = and i32 %426, 240
  %428 = ashr i32 %427, 4
  %429 = and i32 %428, 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %422
  %432 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %433 = load i32, i32* @AR_SCORPION_PHY_TPC_19_B2, align 4
  %434 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %435 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %432, i32 %433, i32 %434, i32 0)
  br label %436

436:                                              ; preds = %431, %422
  br label %437

437:                                              ; preds = %436, %393
  br label %438

438:                                              ; preds = %437, %279
  %439 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %440 = load i32, i32* @AR_PHY_TPC_18, align 4
  %441 = load i32, i32* @AR_PHY_TPC_18_THERM_CAL_VALUE, align 4
  %442 = load i32*, i32** %10, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 0
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %439, i32 %440, i32 %441, i32 %444)
  ret i32 0
}

declare dso_local %struct.TYPE_14__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_JUPITER(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_HONEYBEE(%struct.ath_hal*) #1

declare dso_local i32 @FBIN2FREQ(i32, i32) #1

declare dso_local i32 @interpolate(i32, i32*, i32*, i32) #1

declare dso_local i32 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
