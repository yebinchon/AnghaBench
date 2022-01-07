; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_battery.c_acpi_battery_get_battinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_battery.c_acpi_battery_get_battinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battinfo = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.acpi_bst = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.acpi_bif = type { i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ACPI_BATT_STAT_DISCHARG = common dso_local global i32 0, align 4
@ACPI_BATT_STAT_CHARGING = common dso_local global i32 0, align 4
@ACPI_BIF_UNITS_MA = common dso_local global i64 0, align 8
@ACPI_BATT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_battery_get_battinfo(i32* %0, %struct.acpi_battinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.acpi_battinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.acpi_bst*, align 8
  %19 = alloca %struct.acpi_bif*, align 8
  %20 = alloca %struct.acpi_battinfo*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.acpi_battinfo* %1, %struct.acpi_battinfo** %5, align 8
  %21 = call i32* @devclass_find(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %16, align 8
  %22 = load i32*, i32** %16, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %3, align 4
  br label %455

26:                                               ; preds = %2
  %27 = load i32*, i32** %16, align 8
  %28 = call i32 @devclass_get_maxunit(i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %3, align 4
  br label %455

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 40
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @M_TEMP, align 4
  %39 = load i32, i32* @M_WAITOK, align 4
  %40 = load i32, i32* @M_ZERO, align 4
  %41 = or i32 %39, %40
  %42 = call %struct.acpi_bst* @malloc(i32 %37, i32 %38, i32 %41)
  store %struct.acpi_bst* %42, %struct.acpi_bst** %18, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 40
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @M_TEMP, align 4
  %48 = load i32, i32* @M_WAITOK, align 4
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = or i32 %48, %49
  %51 = call %struct.acpi_bst* @malloc(i32 %46, i32 %47, i32 %50)
  %52 = bitcast %struct.acpi_bst* %51 to %struct.acpi_battinfo*
  store %struct.acpi_battinfo* %52, %struct.acpi_battinfo** %20, align 8
  %53 = load i32, i32* @M_TEMP, align 4
  %54 = load i32, i32* @M_WAITOK, align 4
  %55 = load i32, i32* @M_ZERO, align 4
  %56 = or i32 %54, %55
  %57 = call %struct.acpi_bst* @malloc(i32 40, i32 %53, i32 %56)
  %58 = bitcast %struct.acpi_bst* %57 to %struct.acpi_bif*
  store %struct.acpi_bif* %58, %struct.acpi_bif** %19, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %304, %33
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %307

63:                                               ; preds = %59
  %64 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %20, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %64, i64 %66
  %68 = bitcast %struct.acpi_battinfo* %67 to %struct.acpi_bst*
  %69 = call i32 @acpi_reset_battinfo(%struct.acpi_bst* %68)
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32* @devclass_get_device(i32* %70, i32 %71)
  store i32* %72, i32** %17, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %304

76:                                               ; preds = %63
  %77 = load i32*, i32** %4, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = icmp eq i32* %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %83, %79, %76
  %86 = load i32*, i32** %17, align 8
  %87 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %87, i64 %89
  %91 = call i64 @ACPI_BATT_GET_STATUS(i32* %86, %struct.acpi_bst* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %85
  %94 = load i32*, i32** %17, align 8
  %95 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %96 = bitcast %struct.acpi_bif* %95 to %struct.acpi_bst*
  %97 = call i64 @ACPI_BATT_GET_INFO(i32* %94, %struct.acpi_bst* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %85
  br label %304

100:                                              ; preds = %93
  %101 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %101, i64 %103
  %105 = call i32 @acpi_battery_bst_valid(%struct.acpi_bst* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %109 = bitcast %struct.acpi_bif* %108 to %struct.acpi_bst*
  %110 = call i32 @acpi_battery_bif_valid(%struct.acpi_bst* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107, %100
  br label %304

113:                                              ; preds = %107
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  %116 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %116, i64 %118
  %120 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ACPI_BATT_STAT_DISCHARG, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %113
  %126 = load i32, i32* @ACPI_BATT_STAT_CHARGING, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %128, i64 %130
  %132 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %127
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %125, %113
  %136 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %136, i64 %138
  %140 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %6, align 4
  %144 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %144, i64 %146
  %148 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %20, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %150, i64 %152
  %154 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %153, i32 0, i32 0
  store i32 %149, i32* %154, align 8
  %155 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %156 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @ACPI_BIF_UNITS_MA, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %211

160:                                              ; preds = %135
  %161 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %162 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %211

165:                                              ; preds = %160
  %166 = load i32*, i32** %4, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %211

168:                                              ; preds = %165
  %169 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %169, i64 %171
  %173 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %176 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 %174, %177
  %179 = sdiv i32 %178, 1000
  %180 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %180, i64 %182
  %184 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %183, i32 0, i32 3
  store i32 %179, i32* %184, align 4
  %185 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %185, i64 %187
  %189 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %192 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 %190, %193
  %195 = sdiv i32 %194, 1000
  %196 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %196, i64 %198
  %200 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %199, i32 0, i32 4
  store i32 %195, i32* %200, align 8
  %201 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %202 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %205 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = mul nsw i32 %203, %206
  %208 = sdiv i32 %207, 1000
  %209 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %210 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %168, %165, %160, %135
  %212 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %213 = bitcast %struct.acpi_bif* %212 to %struct.acpi_bst*
  %214 = call i32 @acpi_battery_bif_valid(%struct.acpi_bst* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %211
  br label %304

217:                                              ; preds = %211
  %218 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %218, i64 %220
  %222 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %225 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = icmp sgt i32 %223, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %217
  %229 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %230 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %232, i64 %234
  %236 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %235, i32 0, i32 4
  store i32 %231, i32* %236, align 8
  br label %237

237:                                              ; preds = %228, %217
  %238 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %238, i64 %240
  %242 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = mul nsw i32 100, %243
  %245 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %246 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = sdiv i32 %244, %247
  %249 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %20, align 8
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %249, i64 %251
  %253 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %252, i32 0, i32 4
  store i32 %248, i32* %253, align 8
  %254 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %20, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %254, i64 %256
  %258 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, -1
  br i1 %260, label %261, label %275

261:                                              ; preds = %237
  %262 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %262, i64 %264
  %266 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* %11, align 4
  %269 = add nsw i32 %268, %267
  store i32 %269, i32* %11, align 4
  %270 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %271 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %12, align 4
  br label %275

275:                                              ; preds = %261, %237
  %276 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %276, i64 %278
  %280 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @ACPI_BATT_UNKNOWN, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %303

284:                                              ; preds = %275
  %285 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %286 = load i32, i32* %10, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %285, i64 %287
  %289 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @ACPI_BATT_STAT_DISCHARG, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %303

294:                                              ; preds = %284
  %295 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %295, i64 %297
  %299 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %14, align 4
  %302 = add nsw i32 %301, %300
  store i32 %302, i32* %14, align 4
  br label %303

303:                                              ; preds = %294, %284, %275
  br label %304

304:                                              ; preds = %303, %216, %112, %99, %75
  %305 = load i32, i32* %10, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %10, align 4
  br label %59

307:                                              ; preds = %59
  %308 = load i32*, i32** %4, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = load i32, i32* %8, align 4
  %312 = icmp eq i32 %311, -1
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  %314 = load i32, i32* @ENXIO, align 4
  store i32 %314, i32* %9, align 4
  br label %430

315:                                              ; preds = %310, %307
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %316

316:                                              ; preds = %353, %315
  %317 = load i32, i32* %10, align 4
  %318 = load i32, i32* %7, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %356

320:                                              ; preds = %316
  %321 = load i32, i32* %14, align 4
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %338

323:                                              ; preds = %320
  %324 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %325 = load i32, i32* %10, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %324, i64 %326
  %328 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = mul nsw i32 60, %329
  %331 = load i32, i32* %14, align 4
  %332 = sdiv i32 %330, %331
  %333 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %20, align 8
  %334 = load i32, i32* %10, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %333, i64 %335
  %337 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %336, i32 0, i32 6
  store i32 %332, i32* %337, align 8
  br label %344

338:                                              ; preds = %320
  %339 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %20, align 8
  %340 = load i32, i32* %10, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %339, i64 %341
  %343 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %342, i32 0, i32 6
  store i32 0, i32* %343, align 8
  br label %344

344:                                              ; preds = %338, %323
  %345 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %20, align 8
  %346 = load i32, i32* %10, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %345, i64 %347
  %349 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %348, i32 0, i32 6
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* %13, align 4
  %352 = add nsw i32 %351, %350
  store i32 %352, i32* %13, align 4
  br label %353

353:                                              ; preds = %344
  %354 = load i32, i32* %10, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %10, align 4
  br label %316

356:                                              ; preds = %316
  %357 = load i32, i32* %15, align 4
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %425

359:                                              ; preds = %356
  %360 = load i32*, i32** %4, align 8
  %361 = icmp eq i32* %360, null
  br i1 %361, label %362, label %378

362:                                              ; preds = %359
  %363 = load i32, i32* %11, align 4
  %364 = mul nsw i32 %363, 100
  %365 = load i32, i32* %12, align 4
  %366 = sdiv i32 %364, %365
  %367 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %5, align 8
  %368 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %367, i32 0, i32 4
  store i32 %366, i32* %368, align 8
  %369 = load i32, i32* %13, align 4
  %370 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %5, align 8
  %371 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %370, i32 0, i32 6
  store i32 %369, i32* %371, align 8
  %372 = load i32, i32* %6, align 4
  %373 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %5, align 8
  %374 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %373, i32 0, i32 0
  store i32 %372, i32* %374, align 8
  %375 = load i32, i32* %14, align 4
  %376 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %5, align 8
  %377 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %376, i32 0, i32 3
  store i32 %375, i32* %377, align 4
  br label %411

378:                                              ; preds = %359
  %379 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %20, align 8
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %379, i64 %381
  %383 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %5, align 8
  %386 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %385, i32 0, i32 4
  store i32 %384, i32* %386, align 8
  %387 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %20, align 8
  %388 = load i32, i32* %8, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %387, i64 %389
  %391 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %5, align 8
  %394 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %393, i32 0, i32 6
  store i32 %392, i32* %394, align 8
  %395 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %20, align 8
  %396 = load i32, i32* %8, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %395, i64 %397
  %399 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %5, align 8
  %402 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %401, i32 0, i32 0
  store i32 %400, i32* %402, align 8
  %403 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %404 = load i32, i32* %8, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %403, i64 %405
  %407 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %5, align 8
  %410 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %409, i32 0, i32 3
  store i32 %408, i32* %410, align 4
  br label %411

411:                                              ; preds = %378, %362
  %412 = load i32, i32* %14, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %421, label %414

414:                                              ; preds = %411
  %415 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %5, align 8
  %416 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* @ACPI_BATT_STAT_CHARGING, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %424

421:                                              ; preds = %414, %411
  %422 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %5, align 8
  %423 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %422, i32 0, i32 6
  store i32 -1, i32* %423, align 8
  br label %424

424:                                              ; preds = %421, %414
  br label %429

425:                                              ; preds = %356
  %426 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %5, align 8
  %427 = bitcast %struct.acpi_battinfo* %426 to %struct.acpi_bst*
  %428 = call i32 @acpi_reset_battinfo(%struct.acpi_bst* %427)
  br label %429

429:                                              ; preds = %425, %424
  store i32 0, i32* %9, align 4
  br label %430

430:                                              ; preds = %429, %313
  %431 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %20, align 8
  %432 = icmp ne %struct.acpi_battinfo* %431, null
  br i1 %432, label %433, label %438

433:                                              ; preds = %430
  %434 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %20, align 8
  %435 = bitcast %struct.acpi_battinfo* %434 to %struct.acpi_bst*
  %436 = load i32, i32* @M_TEMP, align 4
  %437 = call i32 @free(%struct.acpi_bst* %435, i32 %436)
  br label %438

438:                                              ; preds = %433, %430
  %439 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %440 = icmp ne %struct.acpi_bif* %439, null
  br i1 %440, label %441, label %446

441:                                              ; preds = %438
  %442 = load %struct.acpi_bif*, %struct.acpi_bif** %19, align 8
  %443 = bitcast %struct.acpi_bif* %442 to %struct.acpi_bst*
  %444 = load i32, i32* @M_TEMP, align 4
  %445 = call i32 @free(%struct.acpi_bst* %443, i32 %444)
  br label %446

446:                                              ; preds = %441, %438
  %447 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %448 = icmp ne %struct.acpi_bst* %447, null
  br i1 %448, label %449, label %453

449:                                              ; preds = %446
  %450 = load %struct.acpi_bst*, %struct.acpi_bst** %18, align 8
  %451 = load i32, i32* @M_TEMP, align 4
  %452 = call i32 @free(%struct.acpi_bst* %450, i32 %451)
  br label %453

453:                                              ; preds = %449, %446
  %454 = load i32, i32* %9, align 4
  store i32 %454, i32* %3, align 4
  br label %455

455:                                              ; preds = %453, %31, %24
  %456 = load i32, i32* %3, align 4
  ret i32 %456
}

declare dso_local i32* @devclass_find(i8*) #1

declare dso_local i32 @devclass_get_maxunit(i32*) #1

declare dso_local %struct.acpi_bst* @malloc(i32, i32, i32) #1

declare dso_local i32 @acpi_reset_battinfo(%struct.acpi_bst*) #1

declare dso_local i32* @devclass_get_device(i32*, i32) #1

declare dso_local i64 @ACPI_BATT_GET_STATUS(i32*, %struct.acpi_bst*) #1

declare dso_local i64 @ACPI_BATT_GET_INFO(i32*, %struct.acpi_bst*) #1

declare dso_local i32 @acpi_battery_bst_valid(%struct.acpi_bst*) #1

declare dso_local i32 @acpi_battery_bif_valid(%struct.acpi_bst*) #1

declare dso_local i32 @free(%struct.acpi_bst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
