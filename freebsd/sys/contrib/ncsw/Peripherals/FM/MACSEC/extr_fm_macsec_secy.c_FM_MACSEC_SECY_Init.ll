; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_secy.c_FM_MACSEC_SECY_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_secy.c_FM_MACSEC_SECY_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__, i32, %struct.TYPE_12__*, %struct.TYPE_14__*, i8*, %struct.TYPE_14__*, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8* }

@NUM_OF_RX_SC = common dso_local global i32 0, align 4
@NUM_OF_TX_SC = common dso_local global i32 0, align 4
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@CheckFmMacsecSecYParameters = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't set Poin-to-Point\00", align 1
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"FM MACSEC SECY RX SC\00", align 1
@e_SC_RX = common dso_local global i8* null, align 8
@MAX_NUM_OF_SA_PER_SC = common dso_local global i64 0, align 8
@SECY_AN_FREE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"FM MACSEC SECY TX SC\00", align 1
@e_SC_TX = common dso_local global i8* null, align 8
@e_FM_MACSEC_MOD_SC_TX = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@FmMacsecSecYExceptionsIsr = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_NORMAL = common dso_local global i32 0, align 4
@FmMacsecSecYEventsIsr = common dso_local global i32 0, align 4
@FM_MACSEC_SECY_EX_FRAME_DISCARDED = common dso_local global i32 0, align 4
@e_FM_MACSEC_EX_TX_SC = common dso_local global i32 0, align 4
@FM_MACSEC_SECY_EV_NEXT_PN = common dso_local global i32 0, align 4
@e_FM_MACSEC_EV_TX_SC_NEXT_PN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_MACSEC_SECY_Init(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  %15 = load i32, i32* @NUM_OF_RX_SC, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @NUM_OF_TX_SC, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = load i32, i32* @E_INVALID_HANDLE, align 4
  %24 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_14__* %22, i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = load i32, i32* @E_INVALID_HANDLE, align 4
  %29 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_14__* %27, i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = load i32, i32* @CheckFmMacsecSecYParameters, align 4
  %32 = call i32 @CHECK_INIT_PARAMETERS(%struct.TYPE_14__* %30, i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %5, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 12
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @FmMacsecSetPTP(i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @E_OK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @MAJOR, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @RETURN_ERROR(i32 %49, i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %40, %1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 96, %56
  %58 = trunc i64 %57 to i32
  %59 = call i64 @XX_Malloc(i32 %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_14__*
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 11
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 11
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = icmp ne %struct.TYPE_14__* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %52
  %68 = load i32, i32* @MAJOR, align 4
  %69 = load i32, i32* @E_NO_MEMORY, align 4
  %70 = call i32 @RETURN_ERROR(i32 %68, i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %52
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 11
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = mul i64 96, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memset(%struct.TYPE_14__* %74, i32 0, i32 %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** @e_SC_RX, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 12
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @FmMacsecAllocScs(i32 %84, i8* %85, i64 %88, i32 %91, i64* %18)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* @E_OK, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %71
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 9
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = icmp ne %struct.TYPE_14__* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 9
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = call i32 @XX_Free(%struct.TYPE_14__* %103)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 11
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = icmp ne %struct.TYPE_14__* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 11
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = call i32 @XX_Free(%struct.TYPE_14__* %113)
  br label %115

115:                                              ; preds = %110, %105
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @ERROR_CODE(i32 %116)
  store i32 %117, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %357

118:                                              ; preds = %71
  store i64 0, i64* %9, align 8
  br label %119

119:                                              ; preds = %164, %118
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %120, %124
  br i1 %125, label %126, label %167

126:                                              ; preds = %119
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds i64, i64* %18, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 11
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  store i64 %129, i64* %135, align 8
  %136 = load i8*, i8** @e_SC_RX, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 11
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 10
  store i8* %136, i8** %142, align 8
  store i64 0, i64* %10, align 8
  br label %143

143:                                              ; preds = %160, %126
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* @MAX_NUM_OF_SA_PER_SC, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %143
  %148 = load i64, i64* @SECY_AN_FREE_VALUE, align 8
  %149 = inttoptr i64 %148 to i8*
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 11
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = load i64, i64* %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = load i64, i64* %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  store i8* %149, i8** %159, align 8
  br label %160

160:                                              ; preds = %147
  %161 = load i64, i64* %10, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %10, align 8
  br label %143

163:                                              ; preds = %143
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %9, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %9, align 8
  br label %119

167:                                              ; preds = %119
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = mul i64 96, %171
  %173 = trunc i64 %172 to i32
  %174 = call i64 @XX_Malloc(i32 %173)
  %175 = inttoptr i64 %174 to %struct.TYPE_14__*
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 9
  store %struct.TYPE_14__* %175, %struct.TYPE_14__** %177, align 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 9
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = icmp ne %struct.TYPE_14__* %180, null
  br i1 %181, label %186, label %182

182:                                              ; preds = %167
  %183 = load i32, i32* @MAJOR, align 4
  %184 = load i32, i32* @E_NO_MEMORY, align 4
  %185 = call i32 @RETURN_ERROR(i32 %183, i32 %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %186

186:                                              ; preds = %182, %167
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 9
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = mul i64 96, %193
  %195 = trunc i64 %194 to i32
  %196 = call i32 @memset(%struct.TYPE_14__* %189, i32 0, i32 %195)
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = load i8*, i8** @e_SC_TX, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 12
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @FmMacsecAllocScs(i32 %199, i8* %200, i64 %203, i32 %206, i64* %21)
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* @E_OK, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %233

210:                                              ; preds = %186
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 9
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = icmp ne %struct.TYPE_14__* %213, null
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 9
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %217, align 8
  %219 = call i32 @XX_Free(%struct.TYPE_14__* %218)
  br label %220

220:                                              ; preds = %215, %210
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 11
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = icmp ne %struct.TYPE_14__* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 11
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = call i32 @XX_Free(%struct.TYPE_14__* %228)
  br label %230

230:                                              ; preds = %225, %220
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @ERROR_CODE(i32 %231)
  store i32 %232, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %357

233:                                              ; preds = %186
  store i64 0, i64* %9, align 8
  br label %234

234:                                              ; preds = %337, %233
  %235 = load i64, i64* %9, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = icmp ult i64 %235, %239
  br i1 %240, label %241, label %340

241:                                              ; preds = %234
  %242 = load i64, i64* %9, align 8
  %243 = getelementptr inbounds i64, i64* %21, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 9
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = load i64, i64* %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  store i64 %244, i64* %250, align 8
  %251 = load i8*, i8** @e_SC_TX, align 8
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 9
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %253, align 8
  %255 = load i64, i64* %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 10
  store i8* %251, i8** %257, align 8
  store i64 0, i64* %10, align 8
  br label %258

258:                                              ; preds = %275, %241
  %259 = load i64, i64* %10, align 8
  %260 = load i64, i64* @MAX_NUM_OF_SA_PER_SC, align 8
  %261 = icmp ult i64 %259, %260
  br i1 %261, label %262, label %278

262:                                              ; preds = %258
  %263 = load i64, i64* @SECY_AN_FREE_VALUE, align 8
  %264 = inttoptr i64 %263 to i8*
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 9
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %266, align 8
  %268 = load i64, i64* %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 8
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %270, align 8
  %272 = load i64, i64* %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  store i8* %264, i8** %274, align 8
  br label %275

275:                                              ; preds = %262
  %276 = load i64, i64* %10, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %10, align 8
  br label %258

278:                                              ; preds = %258
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @e_FM_MACSEC_MOD_SC_TX, align 4
  %283 = load i64, i64* %9, align 8
  %284 = getelementptr inbounds i64, i64* %21, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = trunc i64 %285 to i32
  %287 = load i32, i32* @e_FM_INTR_TYPE_ERR, align 4
  %288 = load i32, i32* @FmMacsecSecYExceptionsIsr, align 4
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %290 = call i32 @FmMacsecRegisterIntr(i32 %281, i32 %282, i32 %286, i32 %287, i32 %288, %struct.TYPE_14__* %289)
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @e_FM_MACSEC_MOD_SC_TX, align 4
  %295 = load i64, i64* %9, align 8
  %296 = getelementptr inbounds i64, i64* %21, i64 %295
  %297 = load i64, i64* %296, align 8
  %298 = trunc i64 %297 to i32
  %299 = load i32, i32* @e_FM_INTR_TYPE_NORMAL, align 4
  %300 = load i32, i32* @FmMacsecSecYEventsIsr, align 4
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %302 = call i32 @FmMacsecRegisterIntr(i32 %293, i32 %294, i32 %298, i32 %299, i32 %300, %struct.TYPE_14__* %301)
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @FM_MACSEC_SECY_EX_FRAME_DISCARDED, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %278
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @e_FM_MACSEC_EX_TX_SC, align 4
  %314 = load i64, i64* %9, align 8
  %315 = getelementptr inbounds i64, i64* %21, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = load i32, i32* @TRUE, align 4
  %318 = call i32 @FmMacsecSetException(i32 %312, i32 %313, i64 %316, i32 %317)
  br label %319

319:                                              ; preds = %309, %278
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @FM_MACSEC_SECY_EV_NEXT_PN, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %336

326:                                              ; preds = %319
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 7
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @e_FM_MACSEC_EV_TX_SC_NEXT_PN, align 4
  %331 = load i64, i64* %9, align 8
  %332 = getelementptr inbounds i64, i64* %21, i64 %331
  %333 = load i64, i64* %332, align 8
  %334 = load i32, i32* @TRUE, align 4
  %335 = call i32 @FmMacsecSetEvent(i32 %329, i32 %330, i64 %333, i32 %334)
  br label %336

336:                                              ; preds = %326, %319
  br label %337

337:                                              ; preds = %336
  %338 = load i64, i64* %9, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %9, align 8
  br label %234

340:                                              ; preds = %234
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 6
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 6
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i8*, i8** @e_SC_TX, align 8
  %351 = call i32 @FmMacsecSecYCreateSc(%struct.TYPE_14__* %341, i32 %345, i32 %349, i8* %350)
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %353 = call i32 @XX_Free(%struct.TYPE_14__* %352)
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 5
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %355, align 8
  %356 = load i32, i32* @E_OK, align 4
  store i32 %356, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %357

357:                                              ; preds = %340, %230, %115
  %358 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %358)
  %359 = load i32, i32* %2, align 4
  ret i32 %359
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @CHECK_INIT_PARAMETERS(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @FmMacsecSetPTP(i32, i32) #2

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #2

declare dso_local i64 @XX_Malloc(i32) #2

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @FmMacsecAllocScs(i32, i8*, i64, i32, i64*) #2

declare dso_local i32 @XX_Free(%struct.TYPE_14__*) #2

declare dso_local i32 @ERROR_CODE(i32) #2

declare dso_local i32 @FmMacsecRegisterIntr(i32, i32, i32, i32, i32, %struct.TYPE_14__*) #2

declare dso_local i32 @FmMacsecSetException(i32, i32, i64, i32) #2

declare dso_local i32 @FmMacsecSetEvent(i32, i32, i64, i32) #2

declare dso_local i32 @FmMacsecSecYCreateSc(%struct.TYPE_14__*, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
