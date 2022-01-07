; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_process_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_process_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.scfg* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32, i64 }
%struct.scfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.enc_fsm_state = type { i32 }
%union.ccb = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SAFT_FLG1_ENCFANFAIL = common dso_local global i32 0, align 4
@SES_OBJSTAT_OK = common dso_local global i8* null, align 8
@SES_OBJSTAT_CRIT = common dso_local global i8* null, align 8
@SES_ENCSTAT_CRITICAL = common dso_local global i32 0, align 4
@SES_ENCSTAT_NONCRITICAL = common dso_local global i32 0, align 4
@SES_OBJSTAT_NOTINSTALLED = common dso_local global i8* null, align 8
@SES_OBJSTAT_UNKNOWN = common dso_local global i8* null, align 8
@SES_ENCSTAT_INFO = common dso_local global i32 0, align 4
@SES_OBJSTAT_UNSUPPORTED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unknown fan%d status 0x%x\0A\00", align 1
@SES_OBJSTAT_NONCRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unknown power supply %d status (0x%x)\0A\00", align 1
@ELMTYP_DEVICE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"unknown lock status 0x%x\0A\00", align 1
@SESCTL_DISABLE = common dso_local global i32 0, align 4
@SES_OBJSTAT_NOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.enc_fsm_state*, %union.ccb*, i32**, i32, i32)* @safte_process_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safte_process_status(%struct.TYPE_7__* %0, %struct.enc_fsm_state* %1, %union.ccb* %2, i32** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.enc_fsm_state*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.scfg*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store %struct.enc_fsm_state* %1, %struct.enc_fsm_state** %9, align 8
  store %union.ccb* %2, %union.ccb** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load i32**, i32*** %11, align 8
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %15, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %21, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.scfg*, %struct.scfg** %27, align 8
  store %struct.scfg* %28, %struct.scfg** %14, align 8
  %29 = load %struct.scfg*, %struct.scfg** %14, align 8
  %30 = icmp eq %struct.scfg* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %7, align 4
  br label %1087

33:                                               ; preds = %6
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %7, align 4
  br label %1087

38:                                               ; preds = %33
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %39 = load %struct.scfg*, %struct.scfg** %14, align 8
  %40 = getelementptr inbounds %struct.scfg, %struct.scfg* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %313, %38
  %42 = load i32, i32* %18, align 4
  %43 = load %struct.scfg*, %struct.scfg** %14, align 8
  %44 = getelementptr inbounds %struct.scfg, %struct.scfg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %316

47:                                               ; preds = %41
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @SAFT_BAIL(i32 %48, i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 0, i32* %68, align 4
  %69 = load %struct.scfg*, %struct.scfg** %14, align 8
  %70 = getelementptr inbounds %struct.scfg, %struct.scfg* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SAFT_FLG1_ENCFANFAIL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %47
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, 64
  store i32 %86, i32* %84, align 4
  br label %99

87:                                               ; preds = %47
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, -65
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %87, %75
  %100 = load i32*, i32** %15, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %281 [
    i32 0, label %105
    i32 1, label %144
    i32 2, label %204
    i32 128, label %255
  ]

105:                                              ; preds = %99
  %106 = load i32, i32* %19, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %19, align 4
  %108 = load i8*, i8** @SES_OBJSTAT_OK, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %109, i32* %118, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 55
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %105
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, 39
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %131, %105
  br label %302

144:                                              ; preds = %99
  %145 = load i8*, i8** @SES_OBJSTAT_CRIT, align 8
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  store i32 %146, i32* %155, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 3
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, 16
  store i32 %166, i32* %164, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 3
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, -8
  store i32 %177, i32* %175, align 4
  %178 = load %struct.scfg*, %struct.scfg** %14, align 8
  %179 = getelementptr inbounds %struct.scfg, %struct.scfg* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %191, label %182

182:                                              ; preds = %144
  %183 = load %struct.scfg*, %struct.scfg** %14, align 8
  %184 = getelementptr inbounds %struct.scfg, %struct.scfg* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.scfg*, %struct.scfg** %14, align 8
  %187 = getelementptr inbounds %struct.scfg, %struct.scfg* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %185, %188
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %182, %144
  %192 = load i32, i32* @SES_ENCSTAT_CRITICAL, align 4
  %193 = load %struct.scfg*, %struct.scfg** %14, align 8
  %194 = getelementptr inbounds %struct.scfg, %struct.scfg* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %203

197:                                              ; preds = %182
  %198 = load i32, i32* @SES_ENCSTAT_NONCRITICAL, align 4
  %199 = load %struct.scfg*, %struct.scfg** %14, align 8
  %200 = getelementptr inbounds %struct.scfg, %struct.scfg* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %197, %191
  br label %302

204:                                              ; preds = %99
  %205 = load i8*, i8** @SES_OBJSTAT_NOTINSTALLED, align 8
  %206 = ptrtoint i8* %205 to i32
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = load i32, i32* %16, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 %206, i32* %215, align 4
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 3
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, 16
  store i32 %226, i32* %224, align 4
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 3
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, -8
  store i32 %237, i32* %235, align 4
  %238 = load %struct.scfg*, %struct.scfg** %14, align 8
  %239 = getelementptr inbounds %struct.scfg, %struct.scfg* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %242, label %248

242:                                              ; preds = %204
  %243 = load i32, i32* @SES_ENCSTAT_CRITICAL, align 4
  %244 = load %struct.scfg*, %struct.scfg** %14, align 8
  %245 = getelementptr inbounds %struct.scfg, %struct.scfg* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %254

248:                                              ; preds = %204
  %249 = load i32, i32* @SES_ENCSTAT_NONCRITICAL, align 4
  %250 = load %struct.scfg*, %struct.scfg** %14, align 8
  %251 = getelementptr inbounds %struct.scfg, %struct.scfg* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 8
  br label %254

254:                                              ; preds = %248, %242
  br label %302

255:                                              ; preds = %99
  %256 = load i8*, i8** @SES_OBJSTAT_UNKNOWN, align 8
  %257 = ptrtoint i8* %256 to i32
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = load i32, i32* %16, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  store i32 %257, i32* %266, align 4
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = load i32, i32* %16, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 3
  store i32 0, i32* %275, align 4
  %276 = load i32, i32* @SES_ENCSTAT_INFO, align 4
  %277 = load %struct.scfg*, %struct.scfg** %14, align 8
  %278 = getelementptr inbounds %struct.scfg, %struct.scfg* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 8
  br label %302

281:                                              ; preds = %99
  %282 = load i8*, i8** @SES_OBJSTAT_UNSUPPORTED, align 8
  %283 = ptrtoint i8* %282 to i32
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = load i32, i32* %16, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  store i32 %283, i32* %292, align 4
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %294 = load i32, i32* %18, align 4
  %295 = load i32*, i32** %15, align 8
  %296 = load i32, i32* %17, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = and i32 %299, 255
  %301 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @ENC_VLOG(%struct.TYPE_7__* %293, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %294, i32 %300)
  br label %302

302:                                              ; preds = %281, %255, %254, %203, %143
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %304, align 8
  %306 = load i32, i32* %16, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %16, align 4
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 1
  store i32 1, i32* %310, align 8
  %311 = load i32, i32* %17, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %17, align 4
  br label %313

313:                                              ; preds = %302
  %314 = load i32, i32* %18, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %18, align 4
  br label %41

316:                                              ; preds = %41
  %317 = load %struct.scfg*, %struct.scfg** %14, align 8
  %318 = getelementptr inbounds %struct.scfg, %struct.scfg* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %330

321:                                              ; preds = %316
  %322 = load i32, i32* %19, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %321
  %325 = load i32, i32* @SES_ENCSTAT_CRITICAL, align 4
  %326 = load %struct.scfg*, %struct.scfg** %14, align 8
  %327 = getelementptr inbounds %struct.scfg, %struct.scfg* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = or i32 %328, %325
  store i32 %329, i32* %327, align 8
  br label %330

330:                                              ; preds = %324, %321, %316
  store i32 0, i32* %18, align 4
  br label %331

331:                                              ; preds = %547, %330
  %332 = load i32, i32* %18, align 4
  %333 = load %struct.scfg*, %struct.scfg** %14, align 8
  %334 = getelementptr inbounds %struct.scfg, %struct.scfg* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 4
  %336 = icmp slt i32 %332, %335
  br i1 %336, label %337, label %550

337:                                              ; preds = %331
  %338 = load i32, i32* %17, align 4
  %339 = load i32, i32* %13, align 4
  %340 = call i32 @SAFT_BAIL(i32 %338, i32 %339)
  %341 = load i8*, i8** @SES_OBJSTAT_UNKNOWN, align 8
  %342 = ptrtoint i8* %341 to i32
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %344, align 8
  %346 = load i32, i32* %16, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 0
  store i32 %342, i32* %351, align 4
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 1
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %353, align 8
  %355 = load i32, i32* %16, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 1
  store i32 0, i32* %360, align 4
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %362, align 8
  %364 = load i32, i32* %16, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 2
  store i32 0, i32* %369, align 4
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %371, align 8
  %373 = load i32, i32* %16, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 3
  store i32 32, i32* %378, align 4
  %379 = load i32*, i32** %15, align 8
  %380 = load i32, i32* %17, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  switch i32 %383, label %525 [
    i32 0, label %384
    i32 1, label %396
    i32 16, label %422
    i32 17, label %448
    i32 32, label %473
    i32 33, label %499
    i32 128, label %499
  ]

384:                                              ; preds = %337
  %385 = load i8*, i8** @SES_OBJSTAT_OK, align 8
  %386 = ptrtoint i8* %385 to i32
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %388, align 8
  %390 = load i32, i32* %16, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 0
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 0
  store i32 %386, i32* %395, align 4
  br label %535

396:                                              ; preds = %337
  %397 = load i8*, i8** @SES_OBJSTAT_OK, align 8
  %398 = ptrtoint i8* %397 to i32
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 1
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %400, align 8
  %402 = load i32, i32* %16, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 0
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 0
  store i32 %398, i32* %407, align 4
  %408 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 1
  %410 = load %struct.TYPE_6__*, %struct.TYPE_6__** %409, align 8
  %411 = load i32, i32* %16, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 3
  store i32 16, i32* %416, align 4
  %417 = load i32, i32* @SES_ENCSTAT_INFO, align 4
  %418 = load %struct.scfg*, %struct.scfg** %14, align 8
  %419 = getelementptr inbounds %struct.scfg, %struct.scfg* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = or i32 %420, %417
  store i32 %421, i32* %419, align 8
  br label %535

422:                                              ; preds = %337
  %423 = load i8*, i8** @SES_OBJSTAT_CRIT, align 8
  %424 = ptrtoint i8* %423 to i32
  %425 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i32 0, i32 1
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** %426, align 8
  %428 = load i32, i32* %16, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 0
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 0
  store i32 %424, i32* %433, align 4
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_6__*, %struct.TYPE_6__** %435, align 8
  %437 = load i32, i32* %16, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 0
  %441 = load i32*, i32** %440, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 3
  store i32 97, i32* %442, align 4
  %443 = load i32, i32* @SES_ENCSTAT_NONCRITICAL, align 4
  %444 = load %struct.scfg*, %struct.scfg** %14, align 8
  %445 = getelementptr inbounds %struct.scfg, %struct.scfg* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = or i32 %446, %443
  store i32 %447, i32* %445, align 8
  br label %535

448:                                              ; preds = %337
  %449 = load i32, i32* @SES_OBJSTAT_NONCRIT, align 4
  %450 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 1
  %452 = load %struct.TYPE_6__*, %struct.TYPE_6__** %451, align 8
  %453 = load i32, i32* %16, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %452, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 0
  %457 = load i32*, i32** %456, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 0
  store i32 %449, i32* %458, align 4
  %459 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i32 0, i32 1
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %460, align 8
  %462 = load i32, i32* %16, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 0
  %466 = load i32*, i32** %465, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 3
  store i32 81, i32* %467, align 4
  %468 = load i32, i32* @SES_ENCSTAT_NONCRITICAL, align 4
  %469 = load %struct.scfg*, %struct.scfg** %14, align 8
  %470 = getelementptr inbounds %struct.scfg, %struct.scfg* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = or i32 %471, %468
  store i32 %472, i32* %470, align 8
  br label %535

473:                                              ; preds = %337
  %474 = load i8*, i8** @SES_OBJSTAT_NOTINSTALLED, align 8
  %475 = ptrtoint i8* %474 to i32
  %476 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %477 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %476, i32 0, i32 1
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** %477, align 8
  %479 = load i32, i32* %16, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i64 %480
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i32 0, i32 0
  %483 = load i32*, i32** %482, align 8
  %484 = getelementptr inbounds i32, i32* %483, i64 0
  store i32 %475, i32* %484, align 4
  %485 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %486 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %485, i32 0, i32 1
  %487 = load %struct.TYPE_6__*, %struct.TYPE_6__** %486, align 8
  %488 = load i32, i32* %16, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %487, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %490, i32 0, i32 0
  %492 = load i32*, i32** %491, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 3
  store i32 0, i32* %493, align 4
  %494 = load i32, i32* @SES_ENCSTAT_INFO, align 4
  %495 = load %struct.scfg*, %struct.scfg** %14, align 8
  %496 = getelementptr inbounds %struct.scfg, %struct.scfg* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = or i32 %497, %494
  store i32 %498, i32* %496, align 8
  br label %535

499:                                              ; preds = %337, %337
  %500 = load i8*, i8** @SES_OBJSTAT_UNKNOWN, align 8
  %501 = ptrtoint i8* %500 to i32
  %502 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 1
  %504 = load %struct.TYPE_6__*, %struct.TYPE_6__** %503, align 8
  %505 = load i32, i32* %16, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %504, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i32 0, i32 0
  %509 = load i32*, i32** %508, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 0
  store i32 %501, i32* %510, align 4
  %511 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 1
  %513 = load %struct.TYPE_6__*, %struct.TYPE_6__** %512, align 8
  %514 = load i32, i32* %16, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %516, i32 0, i32 0
  %518 = load i32*, i32** %517, align 8
  %519 = getelementptr inbounds i32, i32* %518, i64 3
  store i32 0, i32* %519, align 4
  %520 = load i32, i32* @SES_ENCSTAT_INFO, align 4
  %521 = load %struct.scfg*, %struct.scfg** %14, align 8
  %522 = getelementptr inbounds %struct.scfg, %struct.scfg* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = or i32 %523, %520
  store i32 %524, i32* %522, align 8
  br label %535

525:                                              ; preds = %337
  %526 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %527 = load i32, i32* %18, align 4
  %528 = load i32*, i32** %15, align 8
  %529 = load i32, i32* %17, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %528, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = and i32 %532, 255
  %534 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @ENC_VLOG(%struct.TYPE_7__* %526, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %527, i32 %533)
  br label %535

535:                                              ; preds = %525, %499, %473, %448, %422, %396, %384
  %536 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %537 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i32 0, i32 1
  %539 = load %struct.TYPE_6__*, %struct.TYPE_6__** %538, align 8
  %540 = load i32, i32* %16, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %16, align 4
  %542 = sext i32 %540 to i64
  %543 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %539, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %543, i32 0, i32 1
  store i32 1, i32* %544, align 8
  %545 = load i32, i32* %17, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %17, align 4
  br label %547

547:                                              ; preds = %535
  %548 = load i32, i32* %18, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %18, align 4
  br label %331

550:                                              ; preds = %331
  store i32 0, i32* %18, align 4
  br label %551

551:                                              ; preds = %597, %550
  %552 = load i32, i32* %18, align 4
  %553 = load %struct.scfg*, %struct.scfg** %14, align 8
  %554 = getelementptr inbounds %struct.scfg, %struct.scfg* %553, i32 0, i32 6
  %555 = load i32, i32* %554, align 8
  %556 = icmp slt i32 %552, %555
  br i1 %556, label %557, label %600

557:                                              ; preds = %551
  %558 = load i32, i32* %17, align 4
  %559 = load i32, i32* %13, align 4
  %560 = call i32 @SAFT_BAIL(i32 %558, i32 %559)
  %561 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %562 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %561, i32 0, i32 1
  %563 = load %struct.TYPE_6__*, %struct.TYPE_6__** %562, align 8
  %564 = load %struct.scfg*, %struct.scfg** %14, align 8
  %565 = getelementptr inbounds %struct.scfg, %struct.scfg* %564, i32 0, i32 7
  %566 = load i32, i32* %565, align 4
  %567 = load i32, i32* %18, align 4
  %568 = add nsw i32 %566, %567
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %563, i64 %569
  %571 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %570, i32 0, i32 2
  %572 = load i64, i64* %571, align 8
  %573 = load i64, i64* @ELMTYP_DEVICE, align 8
  %574 = icmp eq i64 %572, %573
  br i1 %574, label %575, label %594

575:                                              ; preds = %557
  %576 = load i32*, i32** %15, align 8
  %577 = load i32, i32* %17, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %576, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %582 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %581, i32 0, i32 1
  %583 = load %struct.TYPE_6__*, %struct.TYPE_6__** %582, align 8
  %584 = load %struct.scfg*, %struct.scfg** %14, align 8
  %585 = getelementptr inbounds %struct.scfg, %struct.scfg* %584, i32 0, i32 7
  %586 = load i32, i32* %585, align 4
  %587 = load i32, i32* %18, align 4
  %588 = add nsw i32 %586, %587
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %583, i64 %589
  %591 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %590, i32 0, i32 0
  %592 = load i32*, i32** %591, align 8
  %593 = getelementptr inbounds i32, i32* %592, i64 1
  store i32 %580, i32* %593, align 4
  br label %594

594:                                              ; preds = %575, %557
  %595 = load i32, i32* %17, align 4
  %596 = add nsw i32 %595, 1
  store i32 %596, i32* %17, align 4
  br label %597

597:                                              ; preds = %594
  %598 = load i32, i32* %18, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %18, align 4
  br label %551

600:                                              ; preds = %551
  %601 = load i32, i32* %17, align 4
  %602 = load i32, i32* %13, align 4
  %603 = call i32 @SAFT_BAIL(i32 %601, i32 %602)
  %604 = load %struct.scfg*, %struct.scfg** %14, align 8
  %605 = getelementptr inbounds %struct.scfg, %struct.scfg* %604, i32 0, i32 11
  %606 = load i64, i64* %605, align 8
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %729

608:                                              ; preds = %600
  %609 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %610 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %609, i32 0, i32 1
  %611 = load %struct.TYPE_6__*, %struct.TYPE_6__** %610, align 8
  %612 = load i32, i32* %16, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %611, i64 %613
  %615 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %614, i32 0, i32 0
  %616 = load i32*, i32** %615, align 8
  %617 = getelementptr inbounds i32, i32* %616, i64 1
  store i32 0, i32* %617, align 4
  %618 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %619 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %618, i32 0, i32 1
  %620 = load %struct.TYPE_6__*, %struct.TYPE_6__** %619, align 8
  %621 = load i32, i32* %16, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %620, i64 %622
  %624 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %623, i32 0, i32 0
  %625 = load i32*, i32** %624, align 8
  %626 = getelementptr inbounds i32, i32* %625, i64 2
  store i32 0, i32* %626, align 4
  %627 = load i32*, i32** %15, align 8
  %628 = load i32, i32* %17, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds i32, i32* %627, i64 %629
  %631 = load i32, i32* %630, align 4
  switch i32 %631, label %700 [
    i32 0, label %632
    i32 1, label %653
    i32 128, label %674
  ]

632:                                              ; preds = %608
  %633 = load i8*, i8** @SES_OBJSTAT_OK, align 8
  %634 = ptrtoint i8* %633 to i32
  %635 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %636 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %635, i32 0, i32 1
  %637 = load %struct.TYPE_6__*, %struct.TYPE_6__** %636, align 8
  %638 = load i32, i32* %16, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %637, i64 %639
  %641 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %640, i32 0, i32 0
  %642 = load i32*, i32** %641, align 8
  %643 = getelementptr inbounds i32, i32* %642, i64 0
  store i32 %634, i32* %643, align 4
  %644 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %645 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %644, i32 0, i32 1
  %646 = load %struct.TYPE_6__*, %struct.TYPE_6__** %645, align 8
  %647 = load i32, i32* %16, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %646, i64 %648
  %650 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %649, i32 0, i32 0
  %651 = load i32*, i32** %650, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 3
  store i32 0, i32* %652, align 4
  br label %720

653:                                              ; preds = %608
  %654 = load i8*, i8** @SES_OBJSTAT_OK, align 8
  %655 = ptrtoint i8* %654 to i32
  %656 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %657 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %656, i32 0, i32 1
  %658 = load %struct.TYPE_6__*, %struct.TYPE_6__** %657, align 8
  %659 = load i32, i32* %16, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %658, i64 %660
  %662 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %661, i32 0, i32 0
  %663 = load i32*, i32** %662, align 8
  %664 = getelementptr inbounds i32, i32* %663, i64 0
  store i32 %655, i32* %664, align 4
  %665 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %666 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %665, i32 0, i32 1
  %667 = load %struct.TYPE_6__*, %struct.TYPE_6__** %666, align 8
  %668 = load i32, i32* %16, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %667, i64 %669
  %671 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %670, i32 0, i32 0
  %672 = load i32*, i32** %671, align 8
  %673 = getelementptr inbounds i32, i32* %672, i64 3
  store i32 1, i32* %673, align 4
  br label %720

674:                                              ; preds = %608
  %675 = load i8*, i8** @SES_OBJSTAT_UNKNOWN, align 8
  %676 = ptrtoint i8* %675 to i32
  %677 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %678 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %677, i32 0, i32 1
  %679 = load %struct.TYPE_6__*, %struct.TYPE_6__** %678, align 8
  %680 = load i32, i32* %16, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %679, i64 %681
  %683 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %682, i32 0, i32 0
  %684 = load i32*, i32** %683, align 8
  %685 = getelementptr inbounds i32, i32* %684, i64 0
  store i32 %676, i32* %685, align 4
  %686 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %687 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %686, i32 0, i32 1
  %688 = load %struct.TYPE_6__*, %struct.TYPE_6__** %687, align 8
  %689 = load i32, i32* %16, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %688, i64 %690
  %692 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %691, i32 0, i32 0
  %693 = load i32*, i32** %692, align 8
  %694 = getelementptr inbounds i32, i32* %693, i64 3
  store i32 0, i32* %694, align 4
  %695 = load i32, i32* @SES_ENCSTAT_INFO, align 4
  %696 = load %struct.scfg*, %struct.scfg** %14, align 8
  %697 = getelementptr inbounds %struct.scfg, %struct.scfg* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 8
  %699 = or i32 %698, %695
  store i32 %699, i32* %697, align 8
  br label %720

700:                                              ; preds = %608
  %701 = load i8*, i8** @SES_OBJSTAT_UNSUPPORTED, align 8
  %702 = ptrtoint i8* %701 to i32
  %703 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %704 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %703, i32 0, i32 1
  %705 = load %struct.TYPE_6__*, %struct.TYPE_6__** %704, align 8
  %706 = load i32, i32* %16, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %705, i64 %707
  %709 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %708, i32 0, i32 0
  %710 = load i32*, i32** %709, align 8
  %711 = getelementptr inbounds i32, i32* %710, i64 0
  store i32 %702, i32* %711, align 4
  %712 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %713 = load i32*, i32** %15, align 8
  %714 = load i32, i32* %17, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i32, i32* %713, i64 %715
  %717 = load i32, i32* %716, align 4
  %718 = and i32 %717, 255
  %719 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @ENC_VLOG(%struct.TYPE_7__* %712, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %718)
  br label %720

720:                                              ; preds = %700, %674, %653, %632
  %721 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %722 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %721, i32 0, i32 1
  %723 = load %struct.TYPE_6__*, %struct.TYPE_6__** %722, align 8
  %724 = load i32, i32* %16, align 4
  %725 = add nsw i32 %724, 1
  store i32 %725, i32* %16, align 4
  %726 = sext i32 %724 to i64
  %727 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %723, i64 %726
  %728 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %727, i32 0, i32 1
  store i32 1, i32* %728, align 8
  br label %729

729:                                              ; preds = %720, %600
  %730 = load i32, i32* %17, align 4
  %731 = add nsw i32 %730, 1
  store i32 %731, i32* %17, align 4
  %732 = load i32, i32* %17, align 4
  %733 = load i32, i32* %13, align 4
  %734 = call i32 @SAFT_BAIL(i32 %732, i32 %733)
  %735 = load %struct.scfg*, %struct.scfg** %14, align 8
  %736 = getelementptr inbounds %struct.scfg, %struct.scfg* %735, i32 0, i32 10
  %737 = load i64, i64* %736, align 8
  %738 = icmp ne i64 %737, 0
  br i1 %738, label %739, label %808

739:                                              ; preds = %729
  %740 = load i8*, i8** @SES_OBJSTAT_OK, align 8
  %741 = ptrtoint i8* %740 to i32
  %742 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %743 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %742, i32 0, i32 1
  %744 = load %struct.TYPE_6__*, %struct.TYPE_6__** %743, align 8
  %745 = load i32, i32* %16, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %744, i64 %746
  %748 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %747, i32 0, i32 0
  %749 = load i32*, i32** %748, align 8
  %750 = getelementptr inbounds i32, i32* %749, i64 0
  store i32 %741, i32* %750, align 4
  %751 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %752 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %751, i32 0, i32 1
  %753 = load %struct.TYPE_6__*, %struct.TYPE_6__** %752, align 8
  %754 = load i32, i32* %16, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %753, i64 %755
  %757 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %756, i32 0, i32 0
  %758 = load i32*, i32** %757, align 8
  %759 = getelementptr inbounds i32, i32* %758, i64 1
  store i32 0, i32* %759, align 4
  %760 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %761 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %760, i32 0, i32 1
  %762 = load %struct.TYPE_6__*, %struct.TYPE_6__** %761, align 8
  %763 = load i32, i32* %16, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %762, i64 %764
  %766 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %765, i32 0, i32 0
  %767 = load i32*, i32** %766, align 8
  %768 = getelementptr inbounds i32, i32* %767, i64 2
  store i32 0, i32* %768, align 4
  %769 = load i32*, i32** %15, align 8
  %770 = load i32, i32* %17, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i32, i32* %769, i64 %771
  %773 = load i32, i32* %772, align 4
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %799

775:                                              ; preds = %739
  %776 = load i32, i32* @SESCTL_DISABLE, align 4
  %777 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %778 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %777, i32 0, i32 1
  %779 = load %struct.TYPE_6__*, %struct.TYPE_6__** %778, align 8
  %780 = load i32, i32* %16, align 4
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %779, i64 %781
  %783 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %782, i32 0, i32 0
  %784 = load i32*, i32** %783, align 8
  %785 = getelementptr inbounds i32, i32* %784, i64 0
  %786 = load i32, i32* %785, align 4
  %787 = or i32 %786, %776
  store i32 %787, i32* %785, align 4
  %788 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %789 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %788, i32 0, i32 1
  %790 = load %struct.TYPE_6__*, %struct.TYPE_6__** %789, align 8
  %791 = load i32, i32* %16, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %790, i64 %792
  %794 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %793, i32 0, i32 0
  %795 = load i32*, i32** %794, align 8
  %796 = getelementptr inbounds i32, i32* %795, i64 3
  %797 = load i32, i32* %796, align 4
  %798 = or i32 %797, 64
  store i32 %798, i32* %796, align 4
  br label %799

799:                                              ; preds = %775, %739
  %800 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %801 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %800, i32 0, i32 1
  %802 = load %struct.TYPE_6__*, %struct.TYPE_6__** %801, align 8
  %803 = load i32, i32* %16, align 4
  %804 = add nsw i32 %803, 1
  store i32 %804, i32* %16, align 4
  %805 = sext i32 %803 to i64
  %806 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %802, i64 %805
  %807 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %806, i32 0, i32 1
  store i32 1, i32* %807, align 8
  br label %808

808:                                              ; preds = %799, %729
  %809 = load i32, i32* %17, align 4
  %810 = add nsw i32 %809, 1
  store i32 %810, i32* %17, align 4
  %811 = load i32, i32* %17, align 4
  %812 = load %struct.scfg*, %struct.scfg** %14, align 8
  %813 = getelementptr inbounds %struct.scfg, %struct.scfg* %812, i32 0, i32 3
  %814 = load i32, i32* %813, align 4
  %815 = add nsw i32 %811, %814
  %816 = load i32, i32* %13, align 4
  %817 = call i32 @SAFT_BAIL(i32 %815, i32 %816)
  %818 = load i32*, i32** %15, align 8
  %819 = load i32, i32* %17, align 4
  %820 = load %struct.scfg*, %struct.scfg** %14, align 8
  %821 = getelementptr inbounds %struct.scfg, %struct.scfg* %820, i32 0, i32 3
  %822 = load i32, i32* %821, align 4
  %823 = add nsw i32 %819, %822
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds i32, i32* %818, i64 %824
  %826 = load i32, i32* %825, align 4
  store i32 %826, i32* %20, align 4
  %827 = load i32, i32* %17, align 4
  %828 = load %struct.scfg*, %struct.scfg** %14, align 8
  %829 = getelementptr inbounds %struct.scfg, %struct.scfg* %828, i32 0, i32 3
  %830 = load i32, i32* %829, align 4
  %831 = add nsw i32 %827, %830
  %832 = add nsw i32 %831, 1
  %833 = load i32, i32* %13, align 4
  %834 = call i32 @SAFT_BAIL(i32 %832, i32 %833)
  %835 = load i32, i32* %20, align 4
  %836 = shl i32 %835, 8
  %837 = load i32*, i32** %15, align 8
  %838 = load i32, i32* %17, align 4
  %839 = load %struct.scfg*, %struct.scfg** %14, align 8
  %840 = getelementptr inbounds %struct.scfg, %struct.scfg* %839, i32 0, i32 3
  %841 = load i32, i32* %840, align 4
  %842 = add nsw i32 %838, %841
  %843 = add nsw i32 %842, 1
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds i32, i32* %837, i64 %844
  %846 = load i32, i32* %845, align 4
  %847 = or i32 %836, %846
  %848 = load i32, i32* %20, align 4
  %849 = or i32 %848, %847
  store i32 %849, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %850

850:                                              ; preds = %937, %808
  %851 = load i32, i32* %18, align 4
  %852 = load %struct.scfg*, %struct.scfg** %14, align 8
  %853 = getelementptr inbounds %struct.scfg, %struct.scfg* %852, i32 0, i32 3
  %854 = load i32, i32* %853, align 4
  %855 = icmp slt i32 %851, %854
  br i1 %855, label %856, label %940

856:                                              ; preds = %850
  %857 = load i32, i32* %17, align 4
  %858 = load i32, i32* %13, align 4
  %859 = call i32 @SAFT_BAIL(i32 %857, i32 %858)
  %860 = load i32, i32* %20, align 4
  %861 = load i32, i32* %18, align 4
  %862 = shl i32 1, %861
  %863 = and i32 %860, %862
  %864 = icmp ne i32 %863, 0
  br i1 %864, label %865, label %882

865:                                              ; preds = %856
  %866 = load i8*, i8** @SES_OBJSTAT_CRIT, align 8
  %867 = ptrtoint i8* %866 to i32
  %868 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %869 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %868, i32 0, i32 1
  %870 = load %struct.TYPE_6__*, %struct.TYPE_6__** %869, align 8
  %871 = load i32, i32* %16, align 4
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %870, i64 %872
  %874 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %873, i32 0, i32 0
  %875 = load i32*, i32** %874, align 8
  %876 = getelementptr inbounds i32, i32* %875, i64 0
  store i32 %867, i32* %876, align 4
  %877 = load i32, i32* @SES_ENCSTAT_CRITICAL, align 4
  %878 = load %struct.scfg*, %struct.scfg** %14, align 8
  %879 = getelementptr inbounds %struct.scfg, %struct.scfg* %878, i32 0, i32 0
  %880 = load i32, i32* %879, align 8
  %881 = or i32 %880, %877
  store i32 %881, i32* %879, align 8
  br label %894

882:                                              ; preds = %856
  %883 = load i8*, i8** @SES_OBJSTAT_OK, align 8
  %884 = ptrtoint i8* %883 to i32
  %885 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %886 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %885, i32 0, i32 1
  %887 = load %struct.TYPE_6__*, %struct.TYPE_6__** %886, align 8
  %888 = load i32, i32* %16, align 4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %887, i64 %889
  %891 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %890, i32 0, i32 0
  %892 = load i32*, i32** %891, align 8
  %893 = getelementptr inbounds i32, i32* %892, i64 0
  store i32 %884, i32* %893, align 4
  br label %894

894:                                              ; preds = %882, %865
  %895 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %896 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %895, i32 0, i32 1
  %897 = load %struct.TYPE_6__*, %struct.TYPE_6__** %896, align 8
  %898 = load i32, i32* %16, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %897, i64 %899
  %901 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %900, i32 0, i32 0
  %902 = load i32*, i32** %901, align 8
  %903 = getelementptr inbounds i32, i32* %902, i64 1
  store i32 0, i32* %903, align 4
  %904 = load i32*, i32** %15, align 8
  %905 = load i32, i32* %17, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds i32, i32* %904, i64 %906
  %908 = load i32, i32* %907, align 4
  %909 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %910 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %909, i32 0, i32 1
  %911 = load %struct.TYPE_6__*, %struct.TYPE_6__** %910, align 8
  %912 = load i32, i32* %16, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %911, i64 %913
  %915 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %914, i32 0, i32 0
  %916 = load i32*, i32** %915, align 8
  %917 = getelementptr inbounds i32, i32* %916, i64 2
  store i32 %908, i32* %917, align 4
  %918 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %919 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %918, i32 0, i32 1
  %920 = load %struct.TYPE_6__*, %struct.TYPE_6__** %919, align 8
  %921 = load i32, i32* %16, align 4
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %920, i64 %922
  %924 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %923, i32 0, i32 0
  %925 = load i32*, i32** %924, align 8
  %926 = getelementptr inbounds i32, i32* %925, i64 3
  store i32 0, i32* %926, align 4
  %927 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %928 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %927, i32 0, i32 1
  %929 = load %struct.TYPE_6__*, %struct.TYPE_6__** %928, align 8
  %930 = load i32, i32* %16, align 4
  %931 = add nsw i32 %930, 1
  store i32 %931, i32* %16, align 4
  %932 = sext i32 %930 to i64
  %933 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %929, i64 %932
  %934 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %933, i32 0, i32 1
  store i32 1, i32* %934, align 8
  %935 = load i32, i32* %17, align 4
  %936 = add nsw i32 %935, 1
  store i32 %936, i32* %17, align 4
  br label %937

937:                                              ; preds = %894
  %938 = load i32, i32* %18, align 4
  %939 = add nsw i32 %938, 1
  store i32 %939, i32* %18, align 4
  br label %850

940:                                              ; preds = %850
  store i32 0, i32* %18, align 4
  br label %941

941:                                              ; preds = %1068, %940
  %942 = load i32, i32* %18, align 4
  %943 = load %struct.scfg*, %struct.scfg** %14, align 8
  %944 = getelementptr inbounds %struct.scfg, %struct.scfg* %943, i32 0, i32 4
  %945 = load i32, i32* %944, align 8
  %946 = icmp sle i32 %942, %945
  br i1 %946, label %947, label %1071

947:                                              ; preds = %941
  %948 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %949 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %948, i32 0, i32 1
  %950 = load %struct.TYPE_6__*, %struct.TYPE_6__** %949, align 8
  %951 = load i32, i32* %16, align 4
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %950, i64 %952
  %954 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %953, i32 0, i32 0
  %955 = load i32*, i32** %954, align 8
  %956 = getelementptr inbounds i32, i32* %955, i64 1
  store i32 0, i32* %956, align 4
  %957 = load i32, i32* %20, align 4
  %958 = load i32, i32* %18, align 4
  %959 = load %struct.scfg*, %struct.scfg** %14, align 8
  %960 = getelementptr inbounds %struct.scfg, %struct.scfg* %959, i32 0, i32 4
  %961 = load i32, i32* %960, align 8
  %962 = icmp eq i32 %958, %961
  br i1 %962, label %963, label %964

963:                                              ; preds = %947
  br label %970

964:                                              ; preds = %947
  %965 = load %struct.scfg*, %struct.scfg** %14, align 8
  %966 = getelementptr inbounds %struct.scfg, %struct.scfg* %965, i32 0, i32 3
  %967 = load i32, i32* %966, align 4
  %968 = load i32, i32* %18, align 4
  %969 = add nsw i32 %967, %968
  br label %970

970:                                              ; preds = %964, %963
  %971 = phi i32 [ 15, %963 ], [ %969, %964 ]
  %972 = shl i32 1, %971
  %973 = and i32 %957, %972
  %974 = icmp ne i32 %973, 0
  br i1 %974, label %975, label %1008

975:                                              ; preds = %970
  %976 = load i8*, i8** @SES_OBJSTAT_CRIT, align 8
  %977 = ptrtoint i8* %976 to i32
  %978 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %979 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %978, i32 0, i32 1
  %980 = load %struct.TYPE_6__*, %struct.TYPE_6__** %979, align 8
  %981 = load i32, i32* %16, align 4
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %980, i64 %982
  %984 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %983, i32 0, i32 0
  %985 = load i32*, i32** %984, align 8
  %986 = getelementptr inbounds i32, i32* %985, i64 0
  store i32 %977, i32* %986, align 4
  %987 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %988 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %987, i32 0, i32 1
  %989 = load %struct.TYPE_6__*, %struct.TYPE_6__** %988, align 8
  %990 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %989, i64 4
  %991 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %990, i32 0, i32 0
  %992 = load i32*, i32** %991, align 8
  %993 = getelementptr inbounds i32, i32* %992, i64 2
  store i32 255, i32* %993, align 4
  %994 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %995 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %994, i32 0, i32 1
  %996 = load %struct.TYPE_6__*, %struct.TYPE_6__** %995, align 8
  %997 = load i32, i32* %16, align 4
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %996, i64 %998
  %1000 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %999, i32 0, i32 0
  %1001 = load i32*, i32** %1000, align 8
  %1002 = getelementptr inbounds i32, i32* %1001, i64 3
  store i32 8, i32* %1002, align 4
  %1003 = load i32, i32* @SES_ENCSTAT_CRITICAL, align 4
  %1004 = load %struct.scfg*, %struct.scfg** %14, align 8
  %1005 = getelementptr inbounds %struct.scfg, %struct.scfg* %1004, i32 0, i32 0
  %1006 = load i32, i32* %1005, align 8
  %1007 = or i32 %1006, %1003
  store i32 %1007, i32* %1005, align 8
  br label %1059

1008:                                             ; preds = %970
  %1009 = load %struct.scfg*, %struct.scfg** %14, align 8
  %1010 = getelementptr inbounds %struct.scfg, %struct.scfg* %1009, i32 0, i32 3
  %1011 = load i32, i32* %1010, align 4
  %1012 = load %struct.scfg*, %struct.scfg** %14, align 8
  %1013 = getelementptr inbounds %struct.scfg, %struct.scfg* %1012, i32 0, i32 4
  %1014 = load i32, i32* %1013, align 8
  %1015 = add nsw i32 %1011, %1014
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1017, label %1028

1017:                                             ; preds = %1008
  %1018 = load i32, i32* @SES_OBJSTAT_NOTAVAIL, align 4
  %1019 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %1020 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1019, i32 0, i32 1
  %1021 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1020, align 8
  %1022 = load i32, i32* %16, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1021, i64 %1023
  %1025 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1024, i32 0, i32 0
  %1026 = load i32*, i32** %1025, align 8
  %1027 = getelementptr inbounds i32, i32* %1026, i64 0
  store i32 %1018, i32* %1027, align 4
  br label %1040

1028:                                             ; preds = %1008
  %1029 = load i8*, i8** @SES_OBJSTAT_OK, align 8
  %1030 = ptrtoint i8* %1029 to i32
  %1031 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %1032 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1031, i32 0, i32 1
  %1033 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1032, align 8
  %1034 = load i32, i32* %16, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1033, i64 %1035
  %1037 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1036, i32 0, i32 0
  %1038 = load i32*, i32** %1037, align 8
  %1039 = getelementptr inbounds i32, i32* %1038, i64 0
  store i32 %1030, i32* %1039, align 4
  br label %1040

1040:                                             ; preds = %1028, %1017
  %1041 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %1042 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1041, i32 0, i32 1
  %1043 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1042, align 8
  %1044 = load i32, i32* %16, align 4
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1043, i64 %1045
  %1047 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1046, i32 0, i32 0
  %1048 = load i32*, i32** %1047, align 8
  %1049 = getelementptr inbounds i32, i32* %1048, i64 2
  store i32 0, i32* %1049, align 4
  %1050 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %1051 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1050, i32 0, i32 1
  %1052 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1051, align 8
  %1053 = load i32, i32* %16, align 4
  %1054 = sext i32 %1053 to i64
  %1055 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1052, i64 %1054
  %1056 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1055, i32 0, i32 0
  %1057 = load i32*, i32** %1056, align 8
  %1058 = getelementptr inbounds i32, i32* %1057, i64 3
  store i32 0, i32* %1058, align 4
  br label %1059

1059:                                             ; preds = %1040, %975
  %1060 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %1061 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1060, i32 0, i32 1
  %1062 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1061, align 8
  %1063 = load i32, i32* %16, align 4
  %1064 = add nsw i32 %1063, 1
  store i32 %1064, i32* %16, align 4
  %1065 = sext i32 %1063 to i64
  %1066 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1062, i64 %1065
  %1067 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1066, i32 0, i32 1
  store i32 1, i32* %1067, align 8
  br label %1068

1068:                                             ; preds = %1059
  %1069 = load i32, i32* %18, align 4
  %1070 = add nsw i32 %1069, 1
  store i32 %1070, i32* %18, align 4
  br label %941

1071:                                             ; preds = %941
  %1072 = load i32, i32* %17, align 4
  %1073 = add nsw i32 %1072, 2
  store i32 %1073, i32* %17, align 4
  %1074 = load %struct.scfg*, %struct.scfg** %14, align 8
  %1075 = getelementptr inbounds %struct.scfg, %struct.scfg* %1074, i32 0, i32 0
  %1076 = load i32, i32* %1075, align 8
  %1077 = load %struct.scfg*, %struct.scfg** %14, align 8
  %1078 = getelementptr inbounds %struct.scfg, %struct.scfg* %1077, i32 0, i32 8
  %1079 = load i32, i32* %1078, align 8
  %1080 = or i32 %1076, %1079
  %1081 = load %struct.scfg*, %struct.scfg** %14, align 8
  %1082 = getelementptr inbounds %struct.scfg, %struct.scfg* %1081, i32 0, i32 9
  %1083 = load i32, i32* %1082, align 4
  %1084 = or i32 %1080, %1083
  %1085 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %1086 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1085, i32 0, i32 0
  store i32 %1084, i32* %1086, align 8
  store i32 0, i32* %7, align 4
  br label %1087

1087:                                             ; preds = %1071, %36, %31
  %1088 = load i32, i32* %7, align 4
  ret i32 %1088
}

declare dso_local i32 @SAFT_BAIL(i32, i32) #1

declare dso_local i32 @ENC_VLOG(%struct.TYPE_7__*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
