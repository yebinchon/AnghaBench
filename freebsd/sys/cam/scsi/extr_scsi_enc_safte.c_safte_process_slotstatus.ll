; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_process_slotstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_process_slotstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.scfg*, %struct.TYPE_7__ }
%struct.scfg = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32*, i32 }
%struct.enc_fsm_state = type { i32 }
%union.ccb = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ELMTYP_ARRAY_DEV = common dso_local global i64 0, align 8
@SESCTL_RQSID = common dso_local global i32 0, align 4
@SES_OBJSTAT_NOTINSTALLED = common dso_local global i32 0, align 4
@SES_OBJSTAT_CRIT = common dso_local global i32 0, align 4
@SES_ENCSTAT_CRITICAL = common dso_local global i32 0, align 4
@SES_OBJSTAT_NONCRIT = common dso_local global i32 0, align 4
@SES_ENCSTAT_NONCRITICAL = common dso_local global i32 0, align 4
@SES_OBJSTAT_OK = common dso_local global i32 0, align 4
@SESCTL_RQSRMV = common dso_local global i32 0, align 4
@SESCTL_RQSINS = common dso_local global i32 0, align 4
@SESCTL_DEVOFF = common dso_local global i32 0, align 4
@SESCTL_RQSFLT = common dso_local global i32 0, align 4
@SESCTL_PRDFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.enc_fsm_state*, %union.ccb*, i32**, i32, i32)* @safte_process_slotstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safte_process_slotstatus(%struct.TYPE_6__* %0, %struct.enc_fsm_state* %1, %union.ccb* %2, i32** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.enc_fsm_state*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.scfg*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.enc_fsm_state* %1, %struct.enc_fsm_state** %9, align 8
  store %union.ccb* %2, %union.ccb** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32**, i32*** %11, align 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %15, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %16, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.scfg*, %struct.scfg** %25, align 8
  store %struct.scfg* %26, %struct.scfg** %14, align 8
  %27 = load %struct.scfg*, %struct.scfg** %14, align 8
  %28 = icmp eq %struct.scfg* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %7, align 4
  br label %475

31:                                               ; preds = %6
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %7, align 4
  br label %475

36:                                               ; preds = %31
  %37 = load %struct.scfg*, %struct.scfg** %14, align 8
  %38 = getelementptr inbounds %struct.scfg, %struct.scfg* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.scfg*, %struct.scfg** %14, align 8
  %40 = getelementptr inbounds %struct.scfg, %struct.scfg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %42

42:                                               ; preds = %456, %36
  %43 = load i32, i32* %19, align 4
  %44 = load %struct.scfg*, %struct.scfg** %14, align 8
  %45 = getelementptr inbounds %struct.scfg, %struct.scfg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %461

48:                                               ; preds = %42
  %49 = load i32, i32* %18, align 4
  %50 = add nsw i32 %49, 3
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @SAFT_BAIL(i32 %50, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ELMTYP_ARRAY_DEV, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %48
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %63, %48
  %74 = load i32, i32* @SESCTL_RQSID, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %74
  store i32 %85, i32* %83, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32 0, i32* %94, align 4
  %95 = load i32*, i32** %15, align 8
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 3
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %73
  %104 = load i32, i32* @SES_OBJSTAT_NOTINSTALLED, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %104, i32* %113, align 4
  br label %177

114:                                              ; preds = %73
  %115 = load i32*, i32** %15, align 8
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %116, 0
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 2
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %114
  %124 = load i32, i32* @SES_OBJSTAT_CRIT, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %124, i32* %133, align 4
  %134 = load i32, i32* @SES_ENCSTAT_CRITICAL, align 4
  %135 = load %struct.scfg*, %struct.scfg** %14, align 8
  %136 = getelementptr inbounds %struct.scfg, %struct.scfg* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %176

139:                                              ; preds = %114
  %140 = load i32*, i32** %15, align 8
  %141 = load i32, i32* %18, align 4
  %142 = add nsw i32 %141, 0
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 64
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %139
  %149 = load i32, i32* @SES_OBJSTAT_NONCRIT, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 %149, i32* %158, align 4
  %159 = load i32, i32* @SES_ENCSTAT_NONCRITICAL, align 4
  %160 = load %struct.scfg*, %struct.scfg** %14, align 8
  %161 = getelementptr inbounds %struct.scfg, %struct.scfg* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %175

164:                                              ; preds = %139
  %165 = load i32, i32* @SES_OBJSTAT_OK, align 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %165, i32* %174, align 4
  br label %175

175:                                              ; preds = %164, %148
  br label %176

176:                                              ; preds = %175, %123
  br label %177

177:                                              ; preds = %176, %103
  %178 = load i32*, i32** %15, align 8
  %179 = load i32, i32* %18, align 4
  %180 = add nsw i32 %179, 3
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 2
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %222

186:                                              ; preds = %177
  %187 = load i32*, i32** %15, align 8
  %188 = load i32, i32* %18, align 4
  %189 = add nsw i32 %188, 3
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 1
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %186
  %196 = load i32, i32* @SESCTL_RQSRMV, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = load i32, i32* %17, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 2
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %196
  store i32 %207, i32* %205, align 4
  br label %221

208:                                              ; preds = %186
  %209 = load i32, i32* @SESCTL_RQSINS, align 4
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = load i32, i32* %17, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %209
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %208, %195
  br label %222

222:                                              ; preds = %221, %177
  %223 = load i32*, i32** %15, align 8
  %224 = load i32, i32* %18, align 4
  %225 = add nsw i32 %224, 3
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %228, 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %222
  %232 = load i32, i32* @SESCTL_DEVOFF, align 4
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = load i32, i32* %17, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 3
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %232
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %231, %222
  %245 = load i32*, i32** %15, align 8
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 %246, 0
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = and i32 %250, 2
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %244
  %254 = load i32, i32* @SESCTL_RQSFLT, align 4
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = load i32, i32* %17, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 3
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %254
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %253, %244
  %267 = load i32*, i32** %15, align 8
  %268 = load i32, i32* %18, align 4
  %269 = add nsw i32 %268, 0
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, 64
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %266
  %276 = load i32, i32* @SESCTL_PRDFAIL, align 4
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %278, align 8
  %280 = load i32, i32* %17, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %276
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %275, %266
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %290, align 8
  %292 = load i32, i32* %17, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @ELMTYP_ARRAY_DEV, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %447

299:                                              ; preds = %288
  %300 = load i32*, i32** %15, align 8
  %301 = load i32, i32* %18, align 4
  %302 = add nsw i32 %301, 0
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %300, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = and i32 %305, 1
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %320

308:                                              ; preds = %299
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %310, align 8
  %312 = load i32, i32* %17, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 1
  %318 = load i32, i32* %317, align 4
  %319 = or i32 %318, 128
  store i32 %319, i32* %317, align 4
  br label %320

320:                                              ; preds = %308, %299
  %321 = load i32*, i32** %15, align 8
  %322 = load i32, i32* %18, align 4
  %323 = add nsw i32 %322, 0
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %321, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = and i32 %326, 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %341

329:                                              ; preds = %320
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %331, align 8
  %333 = load i32, i32* %17, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  %339 = load i32, i32* %338, align 4
  %340 = or i32 %339, 2
  store i32 %340, i32* %338, align 4
  br label %341

341:                                              ; preds = %329, %320
  %342 = load i32*, i32** %15, align 8
  %343 = load i32, i32* %18, align 4
  %344 = add nsw i32 %343, 0
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %342, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, 8
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %362

350:                                              ; preds = %341
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %352, align 8
  %354 = load i32, i32* %17, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 1
  %360 = load i32, i32* %359, align 4
  %361 = or i32 %360, 4
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %350, %341
  %363 = load i32*, i32** %15, align 8
  %364 = load i32, i32* %18, align 4
  %365 = add nsw i32 %364, 0
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %363, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, 16
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %383

371:                                              ; preds = %362
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_5__*, %struct.TYPE_5__** %373, align 8
  %375 = load i32, i32* %17, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 1
  %381 = load i32, i32* %380, align 4
  %382 = or i32 %381, 8
  store i32 %382, i32* %380, align 4
  br label %383

383:                                              ; preds = %371, %362
  %384 = load i32*, i32** %15, align 8
  %385 = load i32, i32* %18, align 4
  %386 = add nsw i32 %385, 0
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %384, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = and i32 %389, 32
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %404

392:                                              ; preds = %383
  %393 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 1
  %395 = load %struct.TYPE_5__*, %struct.TYPE_5__** %394, align 8
  %396 = load i32, i32* %17, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 1
  %402 = load i32, i32* %401, align 4
  %403 = or i32 %402, 16
  store i32 %403, i32* %401, align 4
  br label %404

404:                                              ; preds = %392, %383
  %405 = load i32*, i32** %15, align 8
  %406 = load i32, i32* %18, align 4
  %407 = add nsw i32 %406, 1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %405, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = and i32 %410, 1
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %425

413:                                              ; preds = %404
  %414 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 1
  %416 = load %struct.TYPE_5__*, %struct.TYPE_5__** %415, align 8
  %417 = load i32, i32* %17, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 1
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 1
  %423 = load i32, i32* %422, align 4
  %424 = or i32 %423, 32
  store i32 %424, i32* %422, align 4
  br label %425

425:                                              ; preds = %413, %404
  %426 = load i32*, i32** %15, align 8
  %427 = load i32, i32* %18, align 4
  %428 = add nsw i32 %427, 1
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %426, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = and i32 %431, 2
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %446

434:                                              ; preds = %425
  %435 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i32 0, i32 1
  %437 = load %struct.TYPE_5__*, %struct.TYPE_5__** %436, align 8
  %438 = load i32, i32* %17, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 1
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 1
  %444 = load i32, i32* %443, align 4
  %445 = or i32 %444, 1
  store i32 %445, i32* %443, align 4
  br label %446

446:                                              ; preds = %434, %425
  br label %447

447:                                              ; preds = %446, %288
  %448 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %449 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i32 0, i32 1
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** %449, align 8
  %451 = load i32, i32* %17, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %17, align 4
  %453 = sext i32 %451 to i64
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i64 %453
  %455 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %454, i32 0, i32 2
  store i32 1, i32* %455, align 8
  br label %456

456:                                              ; preds = %447
  %457 = load i32, i32* %19, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %19, align 4
  %459 = load i32, i32* %18, align 4
  %460 = add nsw i32 %459, 4
  store i32 %460, i32* %18, align 4
  br label %42

461:                                              ; preds = %42
  %462 = load %struct.scfg*, %struct.scfg** %14, align 8
  %463 = getelementptr inbounds %struct.scfg, %struct.scfg* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.scfg*, %struct.scfg** %14, align 8
  %466 = getelementptr inbounds %struct.scfg, %struct.scfg* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 4
  %468 = or i32 %464, %467
  %469 = load %struct.scfg*, %struct.scfg** %14, align 8
  %470 = getelementptr inbounds %struct.scfg, %struct.scfg* %469, i32 0, i32 4
  %471 = load i32, i32* %470, align 4
  %472 = or i32 %468, %471
  %473 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %474 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %473, i32 0, i32 0
  store i32 %472, i32* %474, align 8
  store i32 0, i32* %7, align 4
  br label %475

475:                                              ; preds = %461, %34, %29
  %476 = load i32, i32* %7, align 4
  ret i32 %476
}

declare dso_local i32 @SAFT_BAIL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
