; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_new_intr_type1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_new_intr_type1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_msix_ctx = type { i32, %struct.aac_softc* }
%struct.aac_softc = type { i32, i32*, i32, i32, i64, %struct.TYPE_4__*, i32*, %struct.aac_command*, %struct.aac_command*, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.aac_command = type { i32 (%struct.aac_command*)*, i32, %struct.aac_fib* }
%struct.aac_fib = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_INT_MODE_MSI = common dso_local global i32 0, align 4
@AAC_SRC_ODBR_MSI = common dso_local global i32 0, align 4
@AAC_INT_MODE_AIF = common dso_local global i32 0, align 4
@AAC_INT_MODE_SYNC = common dso_local global i32 0, align 4
@AAC_INT_MODE_INTX = common dso_local global i32 0, align 4
@AAC_SRC_ODBR_R = common dso_local global i32 0, align 4
@AAC_DB_RESPONSE_SENT_NS = common dso_local global i32 0, align 4
@AAC_SRC_ODBR_C = common dso_local global i32 0, align 4
@AAC_SRC_ODR_SHIFT = common dso_local global i32 0, align 4
@AAC_DB_AIF_PENDING = common dso_local global i32 0, align 4
@AAC_DB_SYNC_COMMAND = common dso_local global i32 0, align 4
@AAC_CMD_COMPLETED = common dso_local global i32 0, align 4
@AAC_QUEUE_FRZN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AAC_FIBSTATE_NOMOREAIF = common dso_local global i32 0, align 4
@AAC_FIBSTATE_DONEADAP = common dso_local global i32 0, align 4
@ST_OK = common dso_local global i32 0, align 4
@AAC_CMD_FASTRESP = common dso_local global i32 0, align 4
@AAC_CLEAR_AIF_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aacraid_new_intr_type1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aac_msix_ctx*, align 8
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aac_command*, align 8
  %7 = alloca %struct.aac_fib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.aac_msix_ctx*
  store %struct.aac_msix_ctx* %17, %struct.aac_msix_ctx** %3, align 8
  %18 = load %struct.aac_msix_ctx*, %struct.aac_msix_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.aac_msix_ctx, %struct.aac_msix_ctx* %18, i32 0, i32 1
  %20 = load %struct.aac_softc*, %struct.aac_softc** %19, align 8
  store %struct.aac_softc* %20, %struct.aac_softc** %4, align 8
  %21 = load %struct.aac_msix_ctx*, %struct.aac_msix_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.aac_msix_ctx, %struct.aac_msix_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %25 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %26 = call i32 @fwprintf(%struct.aac_softc* %24, i8* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %28 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %27, i32 0, i32 3
  %29 = call i32 @mtx_lock(i32* %28)
  %30 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %31 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %30, i32 0, i32 9
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %1
  %35 = load i32, i32* @AAC_INT_MODE_MSI, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %40 = load i32, i32* @AAC_SRC_ODBR_MSI, align 4
  %41 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 262144
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @AAC_INT_MODE_AIF, align 4
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %15, align 4
  br label %58

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 4096
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @AAC_INT_MODE_SYNC, align 4
  %55 = load i32, i32* %15, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58, %34
  br label %106

60:                                               ; preds = %1
  %61 = load i32, i32* @AAC_INT_MODE_INTX, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %63 = load i32, i32* @AAC_SRC_ODBR_R, align 4
  %64 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @AAC_DB_RESPONSE_SENT_NS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load i32, i32* @AAC_DB_RESPONSE_SENT_NS, align 4
  store i32 %70, i32* %8, align 4
  %71 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %72 = load i32, i32* @AAC_SRC_ODBR_C, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %71, i32 %72, i32 %73)
  br label %102

75:                                               ; preds = %60
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @AAC_SRC_ODR_SHIFT, align 4
  %78 = ashr i32 %76, %77
  store i32 %78, i32* %9, align 4
  %79 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %80 = load i32, i32* @AAC_SRC_ODBR_C, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @AAC_MEM0_SETREG4(%struct.aac_softc* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @AAC_DB_AIF_PENDING, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %75
  %88 = load i32, i32* @AAC_INT_MODE_AIF, align 4
  %89 = load i32, i32* %15, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %15, align 4
  br label %101

91:                                               ; preds = %75
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @AAC_DB_SYNC_COMMAND, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @AAC_INT_MODE_SYNC, align 4
  %98 = load i32, i32* %15, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %96, %91
  br label %101

101:                                              ; preds = %100, %87
  br label %102

102:                                              ; preds = %101, %69
  %103 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %104 = load i32, i32* @AAC_SRC_ODBR_R, align 4
  %105 = call i32 @AAC_MEM0_GETREG4(%struct.aac_softc* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %59
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @AAC_INT_MODE_SYNC, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %148

111:                                              ; preds = %106
  %112 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %113 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %112, i32 0, i32 8
  %114 = load %struct.aac_command*, %struct.aac_command** %113, align 8
  %115 = icmp ne %struct.aac_command* %114, null
  br i1 %115, label %116, label %147

116:                                              ; preds = %111
  %117 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %118 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %117, i32 0, i32 8
  %119 = load %struct.aac_command*, %struct.aac_command** %118, align 8
  store %struct.aac_command* %119, %struct.aac_command** %6, align 8
  %120 = load i32, i32* @AAC_CMD_COMPLETED, align 4
  %121 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %122 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %126 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %125, i32 0, i32 0
  %127 = load i32 (%struct.aac_command*)*, i32 (%struct.aac_command*)** %126, align 8
  %128 = icmp ne i32 (%struct.aac_command*)* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %116
  %130 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %131 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %130, i32 0, i32 0
  %132 = load i32 (%struct.aac_command*)*, i32 (%struct.aac_command*)** %131, align 8
  %133 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %134 = call i32 %132(%struct.aac_command* %133)
  br label %138

135:                                              ; preds = %116
  %136 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %137 = call i32 @wakeup(%struct.aac_command* %136)
  br label %138

138:                                              ; preds = %135, %129
  %139 = load i32, i32* @AAC_QUEUE_FRZN, align 4
  %140 = xor i32 %139, -1
  %141 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %142 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %146 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %145, i32 0, i32 8
  store %struct.aac_command* null, %struct.aac_command** %146, align 8
  br label %147

147:                                              ; preds = %138, %111
  store i32 0, i32* %15, align 4
  br label %148

148:                                              ; preds = %147, %106
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* @AAC_INT_MODE_AIF, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @AAC_INT_MODE_INTX, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %160 = call i32 @aac_request_aif(%struct.aac_softc* %159)
  store i32 0, i32* %15, align 4
  br label %161

161:                                              ; preds = %158, %153
  br label %162

162:                                              ; preds = %161, %148
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %340

165:                                              ; preds = %162
  %166 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %167 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %338, %165
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %174 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %175 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %174, i32 0, i32 5
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 2147483647
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = and i32 %184, 1073741824
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %173
  store i32 1, i32* %12, align 4
  br label %195

188:                                              ; preds = %173
  %189 = load i32, i32* %11, align 4
  %190 = and i32 %189, 8388608
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i32, i32* @TRUE, align 4
  store i32 %193, i32* %13, align 4
  br label %194

194:                                              ; preds = %192, %188
  br label %195

195:                                              ; preds = %194, %187
  %196 = load i32, i32* %11, align 4
  %197 = and i32 %196, 65535
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %339

201:                                              ; preds = %195
  %202 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %203 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %202, i32 0, i32 7
  %204 = load %struct.aac_command*, %struct.aac_command** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %204, i64 %207
  store %struct.aac_command* %208, %struct.aac_command** %6, align 8
  %209 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %210 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %209, i32 0, i32 2
  %211 = load %struct.aac_fib*, %struct.aac_fib** %210, align 8
  store %struct.aac_fib* %211, %struct.aac_fib** %7, align 8
  %212 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %213 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %212, i32 0, i32 6
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %217, align 4
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %243

222:                                              ; preds = %201
  %223 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %224 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @AAC_FIBSTATE_NOMOREAIF, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i32 1, i32 0
  store i32 %231, i32* %14, align 4
  %232 = load i32, i32* %14, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %222
  %235 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %236 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %237 = call i32 @aac_handle_aif(%struct.aac_softc* %235, %struct.aac_fib* %236)
  br label %238

238:                                              ; preds = %234, %222
  %239 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %240 = call i32 @aac_remove_busy(%struct.aac_command* %239)
  %241 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %242 = call i32 @aacraid_release_command(%struct.aac_command* %241)
  br label %293

243:                                              ; preds = %201
  %244 = load i32, i32* %12, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %263

246:                                              ; preds = %243
  %247 = load i32, i32* @AAC_FIBSTATE_DONEADAP, align 4
  %248 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %249 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %247
  store i32 %252, i32* %250, align 8
  %253 = load i32, i32* @ST_OK, align 4
  %254 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %255 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = inttoptr i64 %256 to i32*
  store i32 %253, i32* %257, align 4
  %258 = load i32, i32* @AAC_CMD_FASTRESP, align 4
  %259 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %260 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %246, %243
  %264 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %265 = call i32 @aac_remove_busy(%struct.aac_command* %264)
  %266 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %267 = call i32 @aac_unmap_command(%struct.aac_command* %266)
  %268 = load i32, i32* @AAC_CMD_COMPLETED, align 4
  %269 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %270 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  %273 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %274 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %273, i32 0, i32 0
  %275 = load i32 (%struct.aac_command*)*, i32 (%struct.aac_command*)** %274, align 8
  %276 = icmp ne i32 (%struct.aac_command*)* %275, null
  br i1 %276, label %277, label %283

277:                                              ; preds = %263
  %278 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %279 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %278, i32 0, i32 0
  %280 = load i32 (%struct.aac_command*)*, i32 (%struct.aac_command*)** %279, align 8
  %281 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %282 = call i32 %280(%struct.aac_command* %281)
  br label %286

283:                                              ; preds = %263
  %284 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %285 = call i32 @wakeup(%struct.aac_command* %284)
  br label %286

286:                                              ; preds = %283, %277
  %287 = load i32, i32* @AAC_QUEUE_FRZN, align 4
  %288 = xor i32 %287, -1
  %289 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %290 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = and i32 %291, %288
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %286, %238
  %294 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %295 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %294, i32 0, i32 5
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %10, align 4
  %301 = sext i32 %299 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  store i32 0, i32* %302, align 4
  %303 = load i32, i32* %10, align 4
  %304 = load i32, i32* %5, align 4
  %305 = add nsw i32 %304, 1
  %306 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %307 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = mul nsw i32 %305, %308
  %310 = icmp eq i32 %303, %309
  br i1 %310, label %311, label %317

311:                                              ; preds = %293
  %312 = load i32, i32* %5, align 4
  %313 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %314 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = mul nsw i32 %312, %315
  store i32 %316, i32* %10, align 4
  br label %317

317:                                              ; preds = %311, %293
  %318 = load i32, i32* %10, align 4
  %319 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %320 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %5, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  store i32 %318, i32* %324, align 4
  %325 = load i32, i32* %13, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %317
  %328 = load i32, i32* %14, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %327, %317
  %331 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %332 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %331, i32 0, i32 4
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %330, %327
  %336 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %337 = call i32 @aac_request_aif(%struct.aac_softc* %336)
  br label %338

338:                                              ; preds = %335, %330
  br label %173

339:                                              ; preds = %200
  br label %340

340:                                              ; preds = %339, %162
  %341 = load i32, i32* %15, align 4
  %342 = load i32, i32* @AAC_INT_MODE_AIF, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %340
  %346 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %347 = call i32 @aac_request_aif(%struct.aac_softc* %346)
  %348 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %349 = load i32, i32* @AAC_CLEAR_AIF_BIT, align 4
  %350 = call i32 @AAC_ACCESS_DEVREG(%struct.aac_softc* %348, i32 %349)
  store i32 0, i32* %15, align 4
  br label %351

351:                                              ; preds = %345, %340
  %352 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %353 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @AAC_QUEUE_FRZN, align 4
  %356 = and i32 %354, %355
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %351
  %359 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %360 = call i32 @aacraid_startio(%struct.aac_softc* %359)
  br label %361

361:                                              ; preds = %358, %351
  %362 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %363 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %362, i32 0, i32 3
  %364 = call i32 @mtx_unlock(i32* %363)
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @AAC_MEM0_GETREG4(%struct.aac_softc*, i32) #1

declare dso_local i32 @AAC_MEM0_SETREG4(%struct.aac_softc*, i32, i32) #1

declare dso_local i32 @wakeup(%struct.aac_command*) #1

declare dso_local i32 @aac_request_aif(%struct.aac_softc*) #1

declare dso_local i32 @aac_handle_aif(%struct.aac_softc*, %struct.aac_fib*) #1

declare dso_local i32 @aac_remove_busy(%struct.aac_command*) #1

declare dso_local i32 @aacraid_release_command(%struct.aac_command*) #1

declare dso_local i32 @aac_unmap_command(%struct.aac_command*) #1

declare dso_local i32 @AAC_ACCESS_DEVREG(%struct.aac_softc*, i32) #1

declare dso_local i32 @aacraid_startio(%struct.aac_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
