; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_BuildProfileRegs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_BuildProfileRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NOT_AVAILABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Timestamp scale\00", align 1
@NO_MSG = common dso_local global i8* null, align 8
@FM_PCD_PLCR_PEMODE_PI = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_ALG_MASK = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_CBLND = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_DEFC_MASK = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_DEFC_Y = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_DEFC_R = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_DEFC_OVERRIDE = common dso_local global i64 0, align 8
@E_INVALID_SELECTION = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_ALG_RFC2698 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"in RFC2698 Peak rate must be equal or larger than committedInfoRate.\00", align 1
@FM_PCD_PLCR_PEMODE_ALG_RFC4115 = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_OVCLR_MASK = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_OVCLR_Y = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_OVCLR_R = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_OVCLR_G_NC = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_PKT = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_FLS_L2 = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_FLS_L3 = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_FLS_L4 = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_FLS_FULL = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_RBFLS = common dso_local global i64 0, align 8
@FM_PCD_PLCR_PEMODE_FPP_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*)* @BuildProfileRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @BuildProfileRegs(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %18 = load i64, i64* @E_OK, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = call i32 @ASSERT_COND(%struct.TYPE_16__* %19)
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @FmGetTimeStampScale(i32 %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @MAJOR, align 4
  %29 = load i64, i64* @E_NOT_AVAILABLE, align 8
  %30 = call i32 @RETURN_ERROR(i32 %28, i64 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %3
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 8
  %38 = call i64 @SetProfileNia(%struct.TYPE_16__* %32, i32 %35, i32* %37, i64* %9)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i32, i32* @MAJOR, align 4
  %43 = load i64, i64* %7, align 8
  %44 = load i8*, i8** @NO_MSG, align 8
  %45 = call i32 @RETURN_ERROR(i32 %42, i64 %43, i8* %44)
  br label %46

46:                                               ; preds = %41, %31
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 6
  %53 = call i64 @SetProfileNia(%struct.TYPE_16__* %47, i32 %50, i32* %52, i64* %10)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* @MAJOR, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i8*, i8** @NO_MSG, align 8
  %60 = call i32 @RETURN_ERROR(i32 %57, i64 %58, i8* %59)
  br label %61

61:                                               ; preds = %56, %46
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 4
  %68 = call i64 @SetProfileNia(%struct.TYPE_16__* %62, i32 %65, i32* %67, i64* %11)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load i32, i32* @MAJOR, align 4
  %73 = load i64, i64* %7, align 8
  %74 = load i8*, i8** @NO_MSG, align 8
  %75 = call i32 @RETURN_ERROR(i32 %72, i64 %73, i8* %74)
  br label %76

76:                                               ; preds = %71, %61
  %77 = load i64, i64* @FM_PCD_PLCR_PEMODE_PI, align 8
  store i64 %77, i64* %8, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %304 [
    i32 134, label %81
    i32 132, label %145
    i32 131, label %163
  ]

81:                                               ; preds = %76
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 14
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 13
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 12
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 11
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 15
  store i32 0, i32* %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load i64, i64* @FM_PCD_PLCR_PEMODE_ALG_MASK, align 8
  %97 = xor i64 %96, -1
  %98 = load i64, i64* %8, align 8
  %99 = and i64 %98, %97
  store i64 %99, i64* %8, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %139 [
    i32 142, label %103
    i32 143, label %134
  ]

103:                                              ; preds = %81
  %104 = load i64, i64* @FM_PCD_PLCR_PEMODE_CBLND, align 8
  %105 = load i64, i64* %8, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %8, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %128 [
    i32 140, label %111
    i32 128, label %116
    i32 133, label %120
    i32 136, label %124
  ]

111:                                              ; preds = %103
  %112 = load i64, i64* @FM_PCD_PLCR_PEMODE_DEFC_MASK, align 8
  %113 = xor i64 %112, -1
  %114 = load i64, i64* %8, align 8
  %115 = and i64 %114, %113
  store i64 %115, i64* %8, align 8
  br label %133

116:                                              ; preds = %103
  %117 = load i64, i64* @FM_PCD_PLCR_PEMODE_DEFC_Y, align 8
  %118 = load i64, i64* %8, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %8, align 8
  br label %133

120:                                              ; preds = %103
  %121 = load i64, i64* @FM_PCD_PLCR_PEMODE_DEFC_R, align 8
  %122 = load i64, i64* %8, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %8, align 8
  br label %133

124:                                              ; preds = %103
  %125 = load i64, i64* @FM_PCD_PLCR_PEMODE_DEFC_OVERRIDE, align 8
  %126 = load i64, i64* %8, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* %8, align 8
  br label %133

128:                                              ; preds = %103
  %129 = load i32, i32* @MAJOR, align 4
  %130 = load i64, i64* @E_INVALID_SELECTION, align 8
  %131 = load i8*, i8** @NO_MSG, align 8
  %132 = call i32 @RETURN_ERROR(i32 %129, i64 %130, i8* %131)
  br label %133

133:                                              ; preds = %128, %124, %120, %116, %111
  br label %144

134:                                              ; preds = %81
  %135 = load i64, i64* @FM_PCD_PLCR_PEMODE_CBLND, align 8
  %136 = xor i64 %135, -1
  %137 = load i64, i64* %8, align 8
  %138 = and i64 %137, %136
  store i64 %138, i64* %8, align 8
  br label %144

139:                                              ; preds = %81
  %140 = load i32, i32* @MAJOR, align 4
  %141 = load i64, i64* @E_INVALID_SELECTION, align 8
  %142 = load i8*, i8** @NO_MSG, align 8
  %143 = call i32 @RETURN_ERROR(i32 %140, i64 %141, i8* %142)
  br label %144

144:                                              ; preds = %139, %134, %133
  br label %309

145:                                              ; preds = %76
  %146 = load i64, i64* @FM_PCD_PLCR_PEMODE_ALG_RFC2698, align 8
  %147 = load i64, i64* %8, align 8
  %148 = or i64 %147, %146
  store i64 %148, i64* %8, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %152, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %145
  %159 = load i32, i32* @MAJOR, align 4
  %160 = load i64, i64* @E_INVALID_SELECTION, align 8
  %161 = call i32 @RETURN_ERROR(i32 %159, i64 %160, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  br label %162

162:                                              ; preds = %158, %145
  br label %167

163:                                              ; preds = %76
  %164 = load i64, i64* @FM_PCD_PLCR_PEMODE_ALG_RFC4115, align 8
  %165 = load i64, i64* %8, align 8
  %166 = or i64 %165, %164
  store i64 %166, i64* %8, align 8
  br label %167

167:                                              ; preds = %163, %162
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  switch i32 %170, label %207 [
    i32 142, label %171
    i32 143, label %175
  ]

171:                                              ; preds = %167
  %172 = load i64, i64* @FM_PCD_PLCR_PEMODE_CBLND, align 8
  %173 = load i64, i64* %8, align 8
  %174 = or i64 %173, %172
  store i64 %174, i64* %8, align 8
  br label %212

175:                                              ; preds = %167
  %176 = load i64, i64* @FM_PCD_PLCR_PEMODE_CBLND, align 8
  %177 = xor i64 %176, -1
  %178 = load i64, i64* %8, align 8
  %179 = and i64 %178, %177
  store i64 %179, i64* %8, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  switch i32 %183, label %201 [
    i32 140, label %184
    i32 128, label %189
    i32 133, label %193
    i32 136, label %197
  ]

184:                                              ; preds = %175
  %185 = load i64, i64* @FM_PCD_PLCR_PEMODE_OVCLR_MASK, align 8
  %186 = xor i64 %185, -1
  %187 = load i64, i64* %8, align 8
  %188 = and i64 %187, %186
  store i64 %188, i64* %8, align 8
  br label %206

189:                                              ; preds = %175
  %190 = load i64, i64* @FM_PCD_PLCR_PEMODE_OVCLR_Y, align 8
  %191 = load i64, i64* %8, align 8
  %192 = or i64 %191, %190
  store i64 %192, i64* %8, align 8
  br label %206

193:                                              ; preds = %175
  %194 = load i64, i64* @FM_PCD_PLCR_PEMODE_OVCLR_R, align 8
  %195 = load i64, i64* %8, align 8
  %196 = or i64 %195, %194
  store i64 %196, i64* %8, align 8
  br label %206

197:                                              ; preds = %175
  %198 = load i64, i64* @FM_PCD_PLCR_PEMODE_OVCLR_G_NC, align 8
  %199 = load i64, i64* %8, align 8
  %200 = or i64 %199, %198
  store i64 %200, i64* %8, align 8
  br label %206

201:                                              ; preds = %175
  %202 = load i32, i32* @MAJOR, align 4
  %203 = load i64, i64* @E_INVALID_SELECTION, align 8
  %204 = load i8*, i8** @NO_MSG, align 8
  %205 = call i32 @RETURN_ERROR(i32 %202, i64 %203, i8* %204)
  br label %206

206:                                              ; preds = %201, %197, %193, %189, %184
  br label %212

207:                                              ; preds = %167
  %208 = load i32, i32* @MAJOR, align 4
  %209 = load i64, i64* @E_INVALID_SELECTION, align 8
  %210 = load i8*, i8** @NO_MSG, align 8
  %211 = call i32 @RETURN_ERROR(i32 %208, i64 %209, i8* %210)
  br label %212

212:                                              ; preds = %207, %206, %171
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  switch i32 %216, label %273 [
    i32 144, label %217
    i32 135, label %269
  ]

217:                                              ; preds = %212
  %218 = load i64, i64* @FM_PCD_PLCR_PEMODE_PKT, align 8
  %219 = xor i64 %218, -1
  %220 = load i64, i64* %8, align 8
  %221 = and i64 %220, %219
  store i64 %221, i64* %8, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  switch i32 %226, label %243 [
    i32 139, label %227
    i32 138, label %231
    i32 137, label %235
    i32 141, label %239
  ]

227:                                              ; preds = %217
  %228 = load i64, i64* @FM_PCD_PLCR_PEMODE_FLS_L2, align 8
  %229 = load i64, i64* %8, align 8
  %230 = or i64 %229, %228
  store i64 %230, i64* %8, align 8
  br label %248

231:                                              ; preds = %217
  %232 = load i64, i64* @FM_PCD_PLCR_PEMODE_FLS_L3, align 8
  %233 = load i64, i64* %8, align 8
  %234 = or i64 %233, %232
  store i64 %234, i64* %8, align 8
  br label %248

235:                                              ; preds = %217
  %236 = load i64, i64* @FM_PCD_PLCR_PEMODE_FLS_L4, align 8
  %237 = load i64, i64* %8, align 8
  %238 = or i64 %237, %236
  store i64 %238, i64* %8, align 8
  br label %248

239:                                              ; preds = %217
  %240 = load i64, i64* @FM_PCD_PLCR_PEMODE_FLS_FULL, align 8
  %241 = load i64, i64* %8, align 8
  %242 = or i64 %241, %240
  store i64 %242, i64* %8, align 8
  br label %248

243:                                              ; preds = %217
  %244 = load i32, i32* @MAJOR, align 4
  %245 = load i64, i64* @E_INVALID_SELECTION, align 8
  %246 = load i8*, i8** @NO_MSG, align 8
  %247 = call i32 @RETURN_ERROR(i32 %244, i64 %245, i8* %246)
  br label %248

248:                                              ; preds = %243, %239, %235, %231, %227
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  switch i32 %253, label %263 [
    i32 129, label %254
    i32 130, label %259
  ]

254:                                              ; preds = %248
  %255 = load i64, i64* @FM_PCD_PLCR_PEMODE_RBFLS, align 8
  %256 = xor i64 %255, -1
  %257 = load i64, i64* %8, align 8
  %258 = and i64 %257, %256
  store i64 %258, i64* %8, align 8
  br label %268

259:                                              ; preds = %248
  %260 = load i64, i64* @FM_PCD_PLCR_PEMODE_RBFLS, align 8
  %261 = load i64, i64* %8, align 8
  %262 = or i64 %261, %260
  store i64 %262, i64* %8, align 8
  br label %268

263:                                              ; preds = %248
  %264 = load i32, i32* @MAJOR, align 4
  %265 = load i64, i64* @E_INVALID_SELECTION, align 8
  %266 = load i8*, i8** @NO_MSG, align 8
  %267 = call i32 @RETURN_ERROR(i32 %264, i64 %265, i8* %266)
  br label %268

268:                                              ; preds = %263, %259, %254
  br label %278

269:                                              ; preds = %212
  %270 = load i64, i64* @FM_PCD_PLCR_PEMODE_PKT, align 8
  %271 = load i64, i64* %8, align 8
  %272 = or i64 %271, %270
  store i64 %272, i64* %8, align 8
  br label %278

273:                                              ; preds = %212
  %274 = load i32, i32* @MAJOR, align 4
  %275 = load i64, i64* @E_INVALID_SELECTION, align 8
  %276 = load i8*, i8** @NO_MSG, align 8
  %277 = call i32 @RETURN_ERROR(i32 %274, i64 %275, i8* %276)
  br label %278

278:                                              ; preds = %273, %269, %268
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %279 = load i64, i64* %12, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = call i32 @CalcRates(i64 %279, %struct.TYPE_17__* %281, i64* %13, i64* %14, i64* %15, i64* %16, i64* %17)
  %283 = load i64, i64* %13, align 8
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 14
  store i64 %283, i64* %285, align 8
  %286 = load i64, i64* %14, align 8
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 13
  store i64 %286, i64* %288, align 8
  %289 = load i64, i64* %15, align 8
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 12
  store i64 %289, i64* %291, align 8
  %292 = load i64, i64* %16, align 8
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 11
  store i64 %292, i64* %294, align 8
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 1
  store i32 -1, i32* %296, align 4
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 0
  store i32 -1, i32* %298, align 8
  %299 = load i64, i64* %17, align 8
  %300 = load i64, i64* @FM_PCD_PLCR_PEMODE_FPP_SHIFT, align 8
  %301 = shl i64 %299, %300
  %302 = load i64, i64* %8, align 8
  %303 = or i64 %302, %301
  store i64 %303, i64* %8, align 8
  br label %309

304:                                              ; preds = %76
  %305 = load i32, i32* @MAJOR, align 4
  %306 = load i64, i64* @E_INVALID_SELECTION, align 8
  %307 = load i8*, i8** @NO_MSG, align 8
  %308 = call i32 @RETURN_ERROR(i32 %305, i64 %306, i8* %307)
  br label %309

309:                                              ; preds = %304, %278, %144
  %310 = load i64, i64* %8, align 8
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 10
  store i64 %310, i64* %312, align 8
  %313 = load i64, i64* %9, align 8
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 9
  store i64 %313, i64* %315, align 8
  %316 = load i64, i64* %10, align 8
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 8
  store i64 %316, i64* %318, align 8
  %319 = load i64, i64* %11, align 8
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 7
  store i64 %319, i64* %321, align 8
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 6
  store i64 0, i64* %323, align 8
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 5
  store i64 0, i64* %325, align 8
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 4
  store i64 0, i64* %327, align 8
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 3
  store i64 0, i64* %329, align 8
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 2
  store i64 0, i64* %331, align 8
  %332 = load i64, i64* @E_OK, align 8
  ret i64 %332
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_16__*) #1

declare dso_local i64 @FmGetTimeStampScale(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @SetProfileNia(%struct.TYPE_16__*, i32, i32*, i64*) #1

declare dso_local i32 @CalcRates(i64, %struct.TYPE_17__*, i64*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
