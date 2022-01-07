; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FM_PCD_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FM_PCD_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_19__*, i8*, i32, i8*, %struct.TYPE_18__*, i64, i64, i64, i64, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32*, i64, i32 }

@E_OK = common dso_local global i64 0, align 8
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i32 0, align 4
@MODULE_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"FM_PCD_%d_%d\00", align 1
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Sprint failed\00", align 1
@FM_PCD_MASTER_IS_ALIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@blockingFlag = common dso_local global i64 0, align 8
@IpcMsgCompletionCB = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@CheckFmPcdParameters = common dso_local global i32 0, align 4
@IpcMsgHandlerCB = common dso_local global i32 0, align 4
@FM_PCD_MAX_REPLY_SIZE = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"MURAM allocation for IPv6 Frame-Id\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"MURAM allocation for CAPWAP Frame-Id\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PCD_Init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %3, align 8
  %11 = load i64, i64* @E_OK, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = load i32, i32* @E_INVALID_HANDLE, align 4
  %14 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_19__* %12, i32 %13)
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = load i32, i32* @E_INVALID_HANDLE, align 4
  %19 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_19__* %17, i32 %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 12
  %25 = call i32 @FM_GetRevision(i32 %22, i32* %24)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NCSW_MASTER_ID, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %151

31:                                               ; preds = %1
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 11
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = load i32, i32* @MODULE_NAME_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 1, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(%struct.TYPE_18__* %34, i32 0, i32 %38)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 11
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @FmGetId(i32 %45)
  %47 = load i32, i32* @NCSW_MASTER_ID, align 4
  %48 = call i32 @Sprint(%struct.TYPE_18__* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 10
  br i1 %49, label %50, label %54

50:                                               ; preds = %31
  %51 = load i32, i32* @MAJOR, align 4
  %52 = load i64, i64* @E_INVALID_STATE, align 8
  %53 = call i32 @RETURN_ERROR(i32 %51, i64 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %31
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = load i32, i32* @MODULE_NAME_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 1, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memset(%struct.TYPE_18__* %57, i32 0, i32 %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 6
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @FmGetId(i32 %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @Sprint(%struct.TYPE_18__* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %76, 10
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 10, i32 11
  %80 = icmp ne i32 %73, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %54
  %82 = load i32, i32* @MAJOR, align 4
  %83 = load i64, i64* @E_INVALID_STATE, align 8
  %84 = call i32 @RETURN_ERROR(i32 %82, i64 %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %54
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 11
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = call i64 @XX_IpcInitSession(%struct.TYPE_18__* %88, %struct.TYPE_18__* %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 10
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 10
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %150

99:                                               ; preds = %85
  store i64 0, i64* %8, align 8
  %100 = call i32 @memset(%struct.TYPE_18__* %5, i32 0, i32 24)
  %101 = call i32 @memset(%struct.TYPE_18__* %6, i32 0, i32 24)
  %102 = load i32, i32* @FM_PCD_MASTER_IS_ALIVE, align 4
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  store i32 %102, i32* %103, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %106, i32* %109, align 4
  %110 = load i64, i64* @TRUE, align 8
  store i64 %110, i64* @blockingFlag, align 8
  br label %111

111:                                              ; preds = %145, %99
  store i32 12, i32* %7, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 10
  %114 = load i64, i64* %113, align 8
  %115 = bitcast %struct.TYPE_18__* %5 to i64*
  %116 = bitcast %struct.TYPE_18__* %6 to i64*
  %117 = load i32, i32* @IpcMsgCompletionCB, align 4
  %118 = load i64, i64* %2, align 8
  %119 = call i64 @XX_IpcSendMessage(i64 %114, i64* %115, i32 8, i64* %116, i32* %7, i32 %117, i64 %118)
  store i64 %119, i64* %4, align 8
  %120 = load i64, i64* @E_OK, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %111
  %123 = load i32, i32* @MAJOR, align 4
  %124 = load i64, i64* %4, align 8
  %125 = load i8*, i8** @NO_MSG, align 8
  %126 = call i32 @REPORT_ERROR(i32 %123, i64 %124, i8* %125)
  br label %127

127:                                              ; preds = %122, %111
  br label %128

128:                                              ; preds = %131, %127
  %129 = load i64, i64* @blockingFlag, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %128

132:                                              ; preds = %128
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp ne i64 %134, 12
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32, i32* @MAJOR, align 4
  %138 = load i64, i64* @E_INVALID_VALUE, align 8
  %139 = call i32 @REPORT_ERROR(i32 %137, i64 %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %140

140:                                              ; preds = %136, %132
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %8, align 8
  br label %145

145:                                              ; preds = %140
  %146 = load i64, i64* %8, align 8
  %147 = icmp ne i64 %146, 0
  %148 = xor i1 %147, true
  br i1 %148, label %111, label %149

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %149, %85
  br label %151

151:                                              ; preds = %150, %1
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %153 = load i32, i32* @CheckFmPcdParameters, align 4
  %154 = call i32 @CHECK_INIT_PARAMETERS(%struct.TYPE_19__* %152, i32 %153)
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 9
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %151
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %161 = call i64 @KgInit(%struct.TYPE_19__* %160)
  store i64 %161, i64* %4, align 8
  %162 = load i64, i64* %4, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i32, i32* @MAJOR, align 4
  %166 = load i64, i64* %4, align 8
  %167 = load i8*, i8** @NO_MSG, align 8
  %168 = call i32 @RETURN_ERROR(i32 %165, i64 %166, i8* %167)
  br label %169

169:                                              ; preds = %164, %159
  br label %170

170:                                              ; preds = %169, %151
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 8
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %177 = call i64 @PlcrInit(%struct.TYPE_19__* %176)
  store i64 %177, i64* %4, align 8
  %178 = load i64, i64* %4, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i32, i32* @MAJOR, align 4
  %182 = load i64, i64* %4, align 8
  %183 = load i8*, i8** @NO_MSG, align 8
  %184 = call i32 @RETURN_ERROR(i32 %181, i64 %182, i8* %183)
  br label %185

185:                                              ; preds = %180, %175
  br label %186

186:                                              ; preds = %185, %170
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %186
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %193 = call i64 @PrsInit(%struct.TYPE_19__* %192)
  store i64 %193, i64* %4, align 8
  %194 = load i64, i64* %4, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load i32, i32* @MAJOR, align 4
  %198 = load i64, i64* %4, align 8
  %199 = load i8*, i8** @NO_MSG, align 8
  %200 = call i32 @RETURN_ERROR(i32 %197, i64 %198, i8* %199)
  br label %201

201:                                              ; preds = %196, %191
  br label %202

202:                                              ; preds = %201, %186
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @NCSW_MASTER_ID, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %247

208:                                              ; preds = %202
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 6
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = load i32, i32* @MODULE_NAME_SIZE, align 4
  %213 = sext i32 %212 to i64
  %214 = mul i64 1, %213
  %215 = trunc i64 %214 to i32
  %216 = call i32 @memset(%struct.TYPE_18__* %211, i32 0, i32 %215)
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 6
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %218, align 8
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @FmGetId(i32 %222)
  %224 = load i32, i32* @NCSW_MASTER_ID, align 4
  %225 = call i32 @Sprint(%struct.TYPE_18__* %219, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %223, i32 %224)
  %226 = icmp ne i32 %225, 10
  br i1 %226, label %227, label %231

227:                                              ; preds = %208
  %228 = load i32, i32* @MAJOR, align 4
  %229 = load i64, i64* @E_INVALID_STATE, align 8
  %230 = call i32 @RETURN_ERROR(i32 %228, i64 %229, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %231

231:                                              ; preds = %227, %208
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 6
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %233, align 8
  %235 = load i32, i32* @IpcMsgHandlerCB, align 4
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %237 = load i32, i32* @FM_PCD_MAX_REPLY_SIZE, align 4
  %238 = call i64 @XX_IpcRegisterMsgHandler(%struct.TYPE_18__* %234, i32 %235, %struct.TYPE_19__* %236, i32 %237)
  store i64 %238, i64* %4, align 8
  %239 = load i64, i64* %4, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %231
  %242 = load i32, i32* @MAJOR, align 4
  %243 = load i64, i64* %4, align 8
  %244 = load i8*, i8** @NO_MSG, align 8
  %245 = call i32 @RETURN_ERROR(i32 %242, i64 %243, i8* %244)
  br label %246

246:                                              ; preds = %241, %231
  br label %247

247:                                              ; preds = %246, %202
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @FM_MURAM_AllocMem(i32 %250, i32 4, i32 4)
  %252 = call i8* @PTR_TO_UINT(i32 %251)
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 5
  store i8* %252, i8** %254, align 8
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 5
  %257 = load i8*, i8** %256, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %265, label %259

259:                                              ; preds = %247
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %261 = call i32 @FM_PCD_Free(%struct.TYPE_19__* %260)
  %262 = load i32, i32* @MAJOR, align 4
  %263 = load i64, i64* @E_NO_MEMORY, align 8
  %264 = call i32 @RETURN_ERROR(i32 %262, i64 %263, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %265

265:                                              ; preds = %259, %247
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 5
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @UINT_TO_PTR(i8* %268)
  %270 = call i32 @IOMemSet32(i32 %269, i32 0, i32 4)
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @FM_MURAM_AllocMem(i32 %273, i32 2, i32 4)
  %275 = call i8* @PTR_TO_UINT(i32 %274)
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 3
  store i8* %275, i8** %277, align 8
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 3
  %280 = load i8*, i8** %279, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %288, label %282

282:                                              ; preds = %265
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %284 = call i32 @FM_PCD_Free(%struct.TYPE_19__* %283)
  %285 = load i32, i32* @MAJOR, align 4
  %286 = load i64, i64* @E_NO_MEMORY, align 8
  %287 = call i32 @RETURN_ERROR(i32 %285, i64 %286, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %288

288:                                              ; preds = %282, %265
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 3
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @UINT_TO_PTR(i8* %291)
  %293 = call i32 @IOMemSet32(i32 %292, i32 0, i32 2)
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %295, align 8
  %297 = call i32 @XX_Free(%struct.TYPE_19__* %296)
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i32 0, i32 2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %299, align 8
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %304 = call i32 @FmRegisterPcd(i32 %302, %struct.TYPE_19__* %303)
  %305 = load i64, i64* @E_OK, align 8
  ret i64 %305
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @FM_GetRevision(i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @Sprint(%struct.TYPE_18__*, i8*, i32, i32) #1

declare dso_local i32 @FmGetId(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @XX_IpcInitSession(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i64 @XX_IpcSendMessage(i64, i64*, i32, i64*, i32*, i32, i64) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i8*) #1

declare dso_local i32 @CHECK_INIT_PARAMETERS(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @KgInit(%struct.TYPE_19__*) #1

declare dso_local i64 @PlcrInit(%struct.TYPE_19__*) #1

declare dso_local i64 @PrsInit(%struct.TYPE_19__*) #1

declare dso_local i64 @XX_IpcRegisterMsgHandler(%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i8* @PTR_TO_UINT(i32) #1

declare dso_local i32 @FM_MURAM_AllocMem(i32, i32, i32) #1

declare dso_local i32 @FM_PCD_Free(%struct.TYPE_19__*) #1

declare dso_local i32 @IOMemSet32(i32, i32, i32) #1

declare dso_local i32 @UINT_TO_PTR(i8*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_19__*) #1

declare dso_local i32 @FmRegisterPcd(i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
