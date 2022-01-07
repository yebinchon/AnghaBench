; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_getdevtree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_getdevtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, %struct.dev_match_result*, i64, i64 }
%struct.dev_match_result = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.periph_match_result, %struct.device_match_result, %struct.bus_match_result }
%struct.periph_match_result = type { i8*, i32 }
%struct.device_match_result = type { i32, i32, i32, i32, i32 }
%struct.bus_match_result = type { i32, i8*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }

@arglist = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@XPT_DEVICE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"couldn't open %s\00", align 1
@CAM_XPT_PATH_ID = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@XPT_DEV_MATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't malloc memory for matches\00", align 1
@CAMIOCOMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"error sending CAMIOCOMMAND ioctl\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CAM_DEV_MATCH_LAST = common dso_local global i64 0, align 8
@CAM_DEV_MATCH_MORE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"got CAM error %#x, CDM error %d\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"scbus%d on %s%d bus %d%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@DEV_RESULT_UNCONFIGURED = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i32 0, align 4
@PROTO_ATA = common dso_local global i32 0, align 4
@PROTO_SATAPM = common dso_local global i32 0, align 4
@PROTO_MMCSD = common dso_local global i32 0, align 4
@PROTO_SEMB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"%-33s  at scbus%d target %d lun %jx (\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"unknown match type\0A\00", align 1
@PROTO_NVME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @getdevtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getdevtree(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %union.ccb, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bus_match_result*, align 8
  %18 = alloca %struct.device_match_result*, align 8
  %19 = alloca [256 x i8], align 16
  %20 = alloca %struct.periph_match_result*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %37, %3
  %22 = load i32, i32* %5, align 4
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @getopt(i32 %22, i8** %23, i8* %24)
  store i32 %25, i32* %16, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i32, i32* %16, align 4
  switch i32 %28, label %36 [
    i32 98, label %29
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @arglist, align 4
  %31 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %15, align 4
  br label %35

35:                                               ; preds = %34, %29
  br label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %35
  br label %21

38:                                               ; preds = %21
  %39 = load i32, i32* @XPT_DEVICE, align 4
  %40 = load i32, i32* @O_RDWR, align 4
  %41 = call i32 @open(i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @XPT_DEVICE, align 4
  %45 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 1, i32* %4, align 4
  br label %347

46:                                               ; preds = %38
  %47 = call i32 @bzero(%union.ccb* %8, i32 40)
  %48 = load i32, i32* @CAM_XPT_PATH_ID, align 4
  %49 = bitcast %union.ccb* %8 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %52 = bitcast %union.ccb* %8 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %55 = bitcast %union.ccb* %8 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @XPT_DEV_MATCH, align 4
  %58 = bitcast %union.ccb* %8 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  store i32 7200, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @malloc(i32 %63)
  %65 = inttoptr i64 %64 to %struct.dev_match_result*
  %66 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store %struct.dev_match_result* %65, %struct.dev_match_result** %67, align 8
  %68 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load %struct.dev_match_result*, %struct.dev_match_result** %69, align 8
  %71 = icmp eq %struct.dev_match_result* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %46
  %73 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @close(i32 %74)
  store i32 1, i32* %4, align 4
  br label %347

76:                                               ; preds = %46
  %77 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %335, %76
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @CAMIOCOMMAND, align 4
  %86 = call i32 @ioctl(i32 %84, i32 %85, %union.ccb* %8)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %337

90:                                               ; preds = %83
  %91 = bitcast %union.ccb* %8 to %struct.TYPE_4__*
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CAM_REQ_CMP, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %108, label %96

96:                                               ; preds = %90
  %97 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CAM_DEV_MATCH_LAST, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CAM_DEV_MATCH_MORE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102, %90
  %109 = bitcast %union.ccb* %8 to %struct.TYPE_4__*
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %111, i64 %114)
  store i32 1, i32* %13, align 4
  br label %337

116:                                              ; preds = %102, %96
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %319, %116
  %118 = load i32, i32* %11, align 4
  %119 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %322

123:                                              ; preds = %117
  %124 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load %struct.dev_match_result*, %struct.dev_match_result** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %126, i64 %128
  %130 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  switch i32 %131, label %315 [
    i32 130, label %132
    i32 129, label %174
    i32 128, label %283
  ]

132:                                              ; preds = %123
  %133 = load i32, i32* %15, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* @arglist, align 4
  %137 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %138 = and i32 %136, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %318

141:                                              ; preds = %135, %132
  %142 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 3
  %144 = load %struct.dev_match_result*, %struct.dev_match_result** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %144, i64 %146
  %148 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  store %struct.bus_match_result* %149, %struct.bus_match_result** %17, align 8
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %141
  %153 = load i32, i32* @stdout, align 4
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %155

155:                                              ; preds = %152, %141
  %156 = load i32, i32* @stdout, align 4
  %157 = load %struct.bus_match_result*, %struct.bus_match_result** %17, align 8
  %158 = getelementptr inbounds %struct.bus_match_result, %struct.bus_match_result* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.bus_match_result*, %struct.bus_match_result** %17, align 8
  %161 = getelementptr inbounds %struct.bus_match_result, %struct.bus_match_result* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.bus_match_result*, %struct.bus_match_result** %17, align 8
  %164 = getelementptr inbounds %struct.bus_match_result, %struct.bus_match_result* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.bus_match_result*, %struct.bus_match_result** %17, align 8
  %167 = getelementptr inbounds %struct.bus_match_result, %struct.bus_match_result* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %159, i8* %162, i32 %165, i32 %168, i8* %172)
  br label %318

174:                                              ; preds = %123
  %175 = load i32, i32* %15, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %318

178:                                              ; preds = %174
  %179 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 3
  %181 = load %struct.dev_match_result*, %struct.dev_match_result** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %181, i64 %183
  %185 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  store %struct.device_match_result* %186, %struct.device_match_result** %18, align 8
  %187 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %188 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @DEV_RESULT_UNCONFIGURED, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %178
  %194 = load i32, i32* @arglist, align 4
  %195 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %196 = and i32 %194, %195
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  store i32 1, i32* %14, align 4
  br label %318

199:                                              ; preds = %193, %178
  store i32 0, i32* %14, align 4
  br label %200

200:                                              ; preds = %199
  %201 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %202 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @PROTO_SCSI, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %200
  %207 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %208 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %209 = call i32 @print_dev_scsi(%struct.device_match_result* %207, i8* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  store i32 1, i32* %14, align 4
  br label %318

212:                                              ; preds = %206
  br label %264

213:                                              ; preds = %200
  %214 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %215 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @PROTO_ATA, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %225, label %219

219:                                              ; preds = %213
  %220 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %221 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @PROTO_SATAPM, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %219, %213
  %226 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %227 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %228 = call i32 @print_dev_ata(%struct.device_match_result* %226, i8* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  store i32 1, i32* %14, align 4
  br label %318

231:                                              ; preds = %225
  br label %263

232:                                              ; preds = %219
  %233 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %234 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @PROTO_MMCSD, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %232
  %239 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %240 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %241 = call i32 @print_dev_mmcsd(%struct.device_match_result* %239, i8* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  store i32 1, i32* %14, align 4
  br label %318

244:                                              ; preds = %238
  br label %262

245:                                              ; preds = %232
  %246 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %247 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @PROTO_SEMB, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %245
  %252 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %253 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %254 = call i32 @print_dev_semb(%struct.device_match_result* %252, i8* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  store i32 1, i32* %14, align 4
  br label %318

257:                                              ; preds = %251
  br label %261

258:                                              ; preds = %245
  %259 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %260 = call i32 @sprintf(i8* %259, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %261

261:                                              ; preds = %258, %257
  br label %262

262:                                              ; preds = %261, %244
  br label %263

263:                                              ; preds = %262, %231
  br label %264

264:                                              ; preds = %263, %212
  %265 = load i32, i32* %12, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32, i32* @stdout, align 4
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %270

270:                                              ; preds = %267, %264
  %271 = load i32, i32* @stdout, align 4
  %272 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %273 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %274 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %277 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.device_match_result*, %struct.device_match_result** %18, align 8
  %280 = getelementptr inbounds %struct.device_match_result, %struct.device_match_result* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i32, i8*, ...) @fprintf(i32 %271, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %272, i32 %275, i32 %278, i32 %281)
  store i32 1, i32* %12, align 4
  br label %318

283:                                              ; preds = %123
  %284 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 3
  %286 = load %struct.dev_match_result*, %struct.dev_match_result** %285, align 8
  %287 = load i32, i32* %11, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %286, i64 %288
  %290 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  store %struct.periph_match_result* %291, %struct.periph_match_result** %20, align 8
  %292 = load i32, i32* %15, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %283
  %295 = load i32, i32* %14, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %294, %283
  br label %318

298:                                              ; preds = %294
  %299 = load i32, i32* %12, align 4
  %300 = icmp sgt i32 %299, 1
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load i32, i32* @stdout, align 4
  %303 = call i32 (i32, i8*, ...) @fprintf(i32 %302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %304

304:                                              ; preds = %301, %298
  %305 = load i32, i32* @stdout, align 4
  %306 = load %struct.periph_match_result*, %struct.periph_match_result** %20, align 8
  %307 = getelementptr inbounds %struct.periph_match_result, %struct.periph_match_result* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = load %struct.periph_match_result*, %struct.periph_match_result** %20, align 8
  %310 = getelementptr inbounds %struct.periph_match_result, %struct.periph_match_result* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = call i32 (i32, i8*, ...) @fprintf(i32 %305, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %308, i32 %311)
  %313 = load i32, i32* %12, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %12, align 4
  br label %318

315:                                              ; preds = %123
  %316 = load i32, i32* @stdout, align 4
  %317 = call i32 (i32, i8*, ...) @fprintf(i32 %316, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  br label %318

318:                                              ; preds = %315, %304, %297, %270, %256, %243, %230, %211, %198, %177, %155, %140
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %11, align 4
  %321 = add i32 %320, 1
  store i32 %321, i32* %11, align 4
  br label %117

322:                                              ; preds = %117
  br label %323

323:                                              ; preds = %322
  %324 = bitcast %union.ccb* %8 to %struct.TYPE_4__*
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @CAM_REQ_CMP, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %335

329:                                              ; preds = %323
  %330 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @CAM_DEV_MATCH_MORE, align 8
  %334 = icmp eq i64 %332, %333
  br label %335

335:                                              ; preds = %329, %323
  %336 = phi i1 [ false, %323 ], [ %334, %329 ]
  br i1 %336, label %83, label %337

337:                                              ; preds = %335, %108, %88
  %338 = load i32, i32* %12, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load i32, i32* @stdout, align 4
  %342 = call i32 (i32, i8*, ...) @fprintf(i32 %341, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %343

343:                                              ; preds = %340, %337
  %344 = load i32, i32* %10, align 4
  %345 = call i32 @close(i32 %344)
  %346 = load i32, i32* %13, align 4
  store i32 %346, i32* %4, align 4
  br label %347

347:                                              ; preds = %343, %72, %43
  %348 = load i32, i32* %4, align 4
  ret i32 %348
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @bzero(%union.ccb*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ioctl(i32, i32, %union.ccb*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_dev_scsi(%struct.device_match_result*, i8*) #1

declare dso_local i32 @print_dev_ata(%struct.device_match_result*, i8*) #1

declare dso_local i32 @print_dev_mmcsd(%struct.device_match_result*, i8*) #1

declare dso_local i32 @print_dev_semb(%struct.device_match_result*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
