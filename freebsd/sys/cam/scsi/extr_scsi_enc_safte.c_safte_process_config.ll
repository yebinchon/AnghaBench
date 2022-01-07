; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_process_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_process_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.scfg* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }
%struct.scfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.enc_fsm_state = type { i32 }
%union.ccb = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"too little data (%d) for configuration\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Nfans %d Npwr %d Nslots %d Lck %d Ntherm %d Nspkrs %d Ntstats %d\0A\00", align 1
@M_SCSIENC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ELMTYP_FAN = common dso_local global i8* null, align 8
@ELMTYP_POWER = common dso_local global i8* null, align 8
@ELMTYP_DOORLOCK = common dso_local global i8* null, align 8
@ELMTYP_ALARM = common dso_local global i8* null, align 8
@ELMTYP_THERM = common dso_local global i8* null, align 8
@emulate_array_devices = common dso_local global i64 0, align 8
@ELMTYP_ARRAY_DEV = common dso_local global i8* null, align 8
@ELMTYP_DEVICE = common dso_local global i8* null, align 8
@SAFTE_UPDATE_READGFLAGS = common dso_local global i32 0, align 4
@SAFTE_UPDATE_READENCSTATUS = common dso_local global i32 0, align 4
@SAFTE_UPDATE_READSLOTSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.enc_fsm_state*, %union.ccb*, i32**, i32, i32)* @safte_process_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safte_process_config(%struct.TYPE_9__* %0, %struct.enc_fsm_state* %1, %union.ccb* %2, i32** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.enc_fsm_state*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.scfg*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store %struct.enc_fsm_state* %1, %struct.enc_fsm_state** %9, align 8
  store %union.ccb* %2, %union.ccb** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32**, i32*** %11, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %15, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.scfg*, %struct.scfg** %21, align 8
  store %struct.scfg* %22, %struct.scfg** %14, align 8
  %23 = load %struct.scfg*, %struct.scfg** %14, align 8
  %24 = icmp eq %struct.scfg* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %7, align 4
  br label %322

27:                                               ; preds = %6
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %7, align 4
  br label %322

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @ENC_VLOG(%struct.TYPE_9__* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EIO, align 4
  store i32 %39, i32* %7, align 4
  br label %322

40:                                               ; preds = %32
  %41 = load i32*, i32** %15, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.scfg*, %struct.scfg** %14, align 8
  %45 = getelementptr inbounds %struct.scfg, %struct.scfg* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.scfg*, %struct.scfg** %14, align 8
  %50 = getelementptr inbounds %struct.scfg, %struct.scfg* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.scfg*, %struct.scfg** %14, align 8
  %55 = getelementptr inbounds %struct.scfg, %struct.scfg* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.scfg*, %struct.scfg** %14, align 8
  %60 = getelementptr inbounds %struct.scfg, %struct.scfg* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.scfg*, %struct.scfg** %14, align 8
  %65 = getelementptr inbounds %struct.scfg, %struct.scfg* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.scfg*, %struct.scfg** %14, align 8
  %70 = getelementptr inbounds %struct.scfg, %struct.scfg* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp sge i32 %71, 7
  br i1 %72, label %73, label %80

73:                                               ; preds = %40
  %74 = load i32*, i32** %15, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 6
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 15
  %78 = load %struct.scfg*, %struct.scfg** %14, align 8
  %79 = getelementptr inbounds %struct.scfg, %struct.scfg* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  br label %83

80:                                               ; preds = %40
  %81 = load %struct.scfg*, %struct.scfg** %14, align 8
  %82 = getelementptr inbounds %struct.scfg, %struct.scfg* %81, i32 0, i32 6
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %73
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = load %struct.scfg*, %struct.scfg** %14, align 8
  %86 = getelementptr inbounds %struct.scfg, %struct.scfg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.scfg*, %struct.scfg** %14, align 8
  %89 = getelementptr inbounds %struct.scfg, %struct.scfg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.scfg*, %struct.scfg** %14, align 8
  %92 = getelementptr inbounds %struct.scfg, %struct.scfg* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.scfg*, %struct.scfg** %14, align 8
  %95 = getelementptr inbounds %struct.scfg, %struct.scfg* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.scfg*, %struct.scfg** %14, align 8
  %98 = getelementptr inbounds %struct.scfg, %struct.scfg* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.scfg*, %struct.scfg** %14, align 8
  %101 = getelementptr inbounds %struct.scfg, %struct.scfg* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.scfg*, %struct.scfg** %14, align 8
  %104 = getelementptr inbounds %struct.scfg, %struct.scfg* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @ENC_VLOG(%struct.TYPE_9__* %84, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105)
  %107 = load %struct.scfg*, %struct.scfg** %14, align 8
  %108 = getelementptr inbounds %struct.scfg, %struct.scfg* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.scfg*, %struct.scfg** %14, align 8
  %111 = getelementptr inbounds %struct.scfg, %struct.scfg* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = load %struct.scfg*, %struct.scfg** %14, align 8
  %115 = getelementptr inbounds %struct.scfg, %struct.scfg* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = load %struct.scfg*, %struct.scfg** %14, align 8
  %119 = getelementptr inbounds %struct.scfg, %struct.scfg* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  %122 = load %struct.scfg*, %struct.scfg** %14, align 8
  %123 = getelementptr inbounds %struct.scfg, %struct.scfg* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %121, %124
  %126 = load %struct.scfg*, %struct.scfg** %14, align 8
  %127 = getelementptr inbounds %struct.scfg, %struct.scfg* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %125, %128
  %130 = load %struct.scfg*, %struct.scfg** %14, align 8
  %131 = getelementptr inbounds %struct.scfg, %struct.scfg* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %129, %132
  %134 = add nsw i32 %133, 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = call i32 @ENC_FREE_AND_NULL(%struct.TYPE_10__* %141)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 4
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* @M_SCSIENC, align 4
  %151 = load i32, i32* @M_WAITOK, align 4
  %152 = load i32, i32* @M_ZERO, align 4
  %153 = or i32 %151, %152
  %154 = call %struct.TYPE_10__* @malloc(i32 %149, i32 %150, i32 %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  store %struct.TYPE_10__* %154, %struct.TYPE_10__** %157, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %158

158:                                              ; preds = %175, %83
  %159 = load i32, i32* %16, align 4
  %160 = load %struct.scfg*, %struct.scfg** %14, align 8
  %161 = getelementptr inbounds %struct.scfg, %struct.scfg* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %158
  %165 = load i8*, i8** @ELMTYP_FAN, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  store i8* %165, i8** %174, align 8
  br label %175

175:                                              ; preds = %164
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %16, align 4
  br label %158

178:                                              ; preds = %158
  %179 = load i32, i32* %17, align 4
  %180 = load %struct.scfg*, %struct.scfg** %14, align 8
  %181 = getelementptr inbounds %struct.scfg, %struct.scfg* %180, i32 0, i32 7
  store i32 %179, i32* %181, align 4
  store i32 0, i32* %16, align 4
  br label %182

182:                                              ; preds = %199, %178
  %183 = load i32, i32* %16, align 4
  %184 = load %struct.scfg*, %struct.scfg** %14, align 8
  %185 = getelementptr inbounds %struct.scfg, %struct.scfg* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %202

188:                                              ; preds = %182
  %189 = load i8*, i8** @ELMTYP_POWER, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %17, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  store i8* %189, i8** %198, align 8
  br label %199

199:                                              ; preds = %188
  %200 = load i32, i32* %16, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %16, align 4
  br label %182

202:                                              ; preds = %182
  store i32 0, i32* %16, align 4
  br label %203

203:                                              ; preds = %220, %202
  %204 = load i32, i32* %16, align 4
  %205 = load %struct.scfg*, %struct.scfg** %14, align 8
  %206 = getelementptr inbounds %struct.scfg, %struct.scfg* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %209, label %223

209:                                              ; preds = %203
  %210 = load i8*, i8** @ELMTYP_DOORLOCK, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %17, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  store i8* %210, i8** %219, align 8
  br label %220

220:                                              ; preds = %209
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %16, align 4
  br label %203

223:                                              ; preds = %203
  %224 = load %struct.scfg*, %struct.scfg** %14, align 8
  %225 = getelementptr inbounds %struct.scfg, %struct.scfg* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %223
  %229 = load i8*, i8** @ELMTYP_ALARM, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = load i32, i32* %17, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %17, align 4
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  store i8* %229, i8** %238, align 8
  br label %239

239:                                              ; preds = %228, %223
  store i32 0, i32* %16, align 4
  br label %240

240:                                              ; preds = %257, %239
  %241 = load i32, i32* %16, align 4
  %242 = load %struct.scfg*, %struct.scfg** %14, align 8
  %243 = getelementptr inbounds %struct.scfg, %struct.scfg* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %260

246:                                              ; preds = %240
  %247 = load i8*, i8** @ELMTYP_THERM, align 8
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = load i32, i32* %17, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %17, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  store i8* %247, i8** %256, align 8
  br label %257

257:                                              ; preds = %246
  %258 = load i32, i32* %16, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %16, align 4
  br label %240

260:                                              ; preds = %240
  store i32 0, i32* %16, align 4
  br label %261

261:                                              ; preds = %278, %260
  %262 = load i32, i32* %16, align 4
  %263 = load %struct.scfg*, %struct.scfg** %14, align 8
  %264 = getelementptr inbounds %struct.scfg, %struct.scfg* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 4
  %266 = icmp sle i32 %262, %265
  br i1 %266, label %267, label %281

267:                                              ; preds = %261
  %268 = load i8*, i8** @ELMTYP_THERM, align 8
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = load i32, i32* %17, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %17, align 4
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 0
  store i8* %268, i8** %277, align 8
  br label %278

278:                                              ; preds = %267
  %279 = load i32, i32* %16, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %16, align 4
  br label %261

281:                                              ; preds = %261
  %282 = load i32, i32* %17, align 4
  %283 = load %struct.scfg*, %struct.scfg** %14, align 8
  %284 = getelementptr inbounds %struct.scfg, %struct.scfg* %283, i32 0, i32 8
  store i32 %282, i32* %284, align 4
  store i32 0, i32* %16, align 4
  br label %285

285:                                              ; preds = %309, %281
  %286 = load i32, i32* %16, align 4
  %287 = load %struct.scfg*, %struct.scfg** %14, align 8
  %288 = getelementptr inbounds %struct.scfg, %struct.scfg* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = icmp slt i32 %286, %289
  br i1 %290, label %291, label %312

291:                                              ; preds = %285
  %292 = load i64, i64* @emulate_array_devices, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = load i8*, i8** @ELMTYP_ARRAY_DEV, align 8
  br label %298

296:                                              ; preds = %291
  %297 = load i8*, i8** @ELMTYP_DEVICE, align 8
  br label %298

298:                                              ; preds = %296, %294
  %299 = phi i8* [ %295, %294 ], [ %297, %296 ]
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %302, align 8
  %304 = load i32, i32* %17, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %17, align 4
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  store i8* %299, i8** %308, align 8
  br label %309

309:                                              ; preds = %298
  %310 = load i32, i32* %16, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %16, align 4
  br label %285

312:                                              ; preds = %285
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %314 = load i32, i32* @SAFTE_UPDATE_READGFLAGS, align 4
  %315 = call i32 @enc_update_request(%struct.TYPE_9__* %313, i32 %314)
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %317 = load i32, i32* @SAFTE_UPDATE_READENCSTATUS, align 4
  %318 = call i32 @enc_update_request(%struct.TYPE_9__* %316, i32 %317)
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %320 = load i32, i32* @SAFTE_UPDATE_READSLOTSTATUS, align 4
  %321 = call i32 @enc_update_request(%struct.TYPE_9__* %319, i32 %320)
  store i32 0, i32* %7, align 4
  br label %322

322:                                              ; preds = %312, %35, %30, %25
  %323 = load i32, i32* %7, align 4
  ret i32 %323
}

declare dso_local i32 @ENC_VLOG(%struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i32 @ENC_FREE_AND_NULL(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @malloc(i32, i32, i32) #1

declare dso_local i32 @enc_update_request(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
