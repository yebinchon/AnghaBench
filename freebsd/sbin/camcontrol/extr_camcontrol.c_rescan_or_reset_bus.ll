; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_rescan_or_reset_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_rescan_or_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64, %union.ccb*, %union.ccb* }
%struct.bus_match_result = type { i64 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_9__, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8* }
%struct.dev_match_result = type { i64, %struct.TYPE_13__, %struct.TYPE_14__, %struct.TYPE_8__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.bus_match_result }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.dev_match_pattern = type { i64, %struct.TYPE_13__, %struct.TYPE_14__, %struct.TYPE_8__, %struct.TYPE_12__, %struct.TYPE_11__ }

@XPT_DEVICE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"error opening transport layer device %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to allocate CCB\00", align 1
@CAM_BUS_WILDCARD = common dso_local global i64 0, align 8
@XPT_SCAN_BUS = common dso_local global i8* null, align 8
@XPT_RESET_BUS = common dso_local global i8* null, align 8
@CAM_TARGET_WILDCARD = common dso_local global i8* null, align 8
@CAM_LUN_WILDCARD = common dso_local global i8* null, align 8
@CAM_FLAG_NONE = common dso_local global i8* null, align 8
@CAMIOCOMMAND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"CAMIOCOMMAND ioctl failed\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"%s of bus %d was successful\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Re-scan\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%s of bus %d returned error %#x\0A\00", align 1
@XPT_DEV_MATCH = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"can't malloc memory for matches\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"can't malloc memory for patterns\00", align 1
@DEV_MATCH_BUS = common dso_local global i64 0, align 8
@BUS_MATCH_ANY = common dso_local global i32 0, align 4
@CAM_DEV_MATCH_LAST = common dso_local global i64 0, align 8
@CAM_DEV_MATCH_MORE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"got CAM error %#x, CDM error %d\0A\00", align 1
@CAM_XPT_PATH_ID = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @rescan_or_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rescan_or_reset_bus(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bus_match_result*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.ccb* null, %union.ccb** %6, align 8
  store %union.ccb* null, %union.ccb** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @XPT_DEVICE, align 4
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = call i32 @open(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @XPT_DEVICE, align 4
  %19 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @XPT_DEVICE, align 4
  %21 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store i32 1, i32* %3, align 4
  br label %384

22:                                               ; preds = %2
  %23 = call %union.ccb* @malloc(i32 40)
  store %union.ccb* %23, %union.ccb** %6, align 8
  %24 = load %union.ccb*, %union.ccb** %6, align 8
  %25 = icmp eq %union.ccb* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %358

28:                                               ; preds = %22
  %29 = load %union.ccb*, %union.ccb** %6, align 8
  %30 = call i32 @bzero(%union.ccb* %29, i32 40)
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @CAM_BUS_WILDCARD, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %105

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8*, i8** @XPT_SCAN_BUS, align 8
  br label %41

39:                                               ; preds = %34
  %40 = load i8*, i8** @XPT_RESET_BUS, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i8* [ %38, %37 ], [ %40, %39 ]
  %43 = load %union.ccb*, %union.ccb** %6, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_14__*
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 5
  store i8* %42, i8** %45, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load %union.ccb*, %union.ccb** %6, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_14__*
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i8*, i8** @CAM_TARGET_WILDCARD, align 8
  %51 = load %union.ccb*, %union.ccb** %6, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_14__*
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 4
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** @CAM_LUN_WILDCARD, align 8
  %55 = load %union.ccb*, %union.ccb** %6, align 8
  %56 = bitcast %union.ccb* %55 to %struct.TYPE_14__*
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 3
  store i8* %54, i8** %57, align 8
  %58 = load i8*, i8** @CAM_FLAG_NONE, align 8
  %59 = load %union.ccb*, %union.ccb** %6, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_8__*
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load %union.ccb*, %union.ccb** %6, align 8
  %63 = bitcast %union.ccb* %62 to %struct.TYPE_14__*
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 5, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @CAMIOCOMMAND, align 4
  %68 = load %union.ccb*, %union.ccb** %6, align 8
  %69 = call i32 @ioctl(i32 %66, i32 %67, %union.ccb* %68)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %41
  %72 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %358

73:                                               ; preds = %41
  %74 = load %union.ccb*, %union.ccb** %6, align 8
  %75 = bitcast %union.ccb* %74 to %struct.TYPE_14__*
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CAM_STATUS_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @CAM_REQ_CMP, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load i32, i32* @stdout, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %88 = load i64, i64* %4, align 8
  %89 = call i32 (i32, i8*, i8*, i64, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %87, i64 %88)
  br label %104

90:                                               ; preds = %73
  %91 = load i32, i32* @stdout, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %96 = load i64, i64* %4, align 8
  %97 = load %union.ccb*, %union.ccb** %6, align 8
  %98 = bitcast %union.ccb* %97 to %struct.TYPE_14__*
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CAM_STATUS_MASK, align 4
  %102 = and i32 %100, %101
  %103 = call i32 (i32, i8*, i8*, i64, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %95, i64 %96, i32 %102)
  store i32 1, i32* %9, align 4
  br label %104

104:                                              ; preds = %90, %82
  br label %358

105:                                              ; preds = %28
  %106 = call %union.ccb* @malloc(i32 40)
  store %union.ccb* %106, %union.ccb** %7, align 8
  %107 = load %union.ccb*, %union.ccb** %7, align 8
  %108 = icmp eq %union.ccb* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %358

111:                                              ; preds = %105
  %112 = load %union.ccb*, %union.ccb** %7, align 8
  %113 = call i32 @bzero(%union.ccb* %112, i32 40)
  %114 = load i8*, i8** @XPT_DEV_MATCH, align 8
  %115 = load %union.ccb*, %union.ccb** %7, align 8
  %116 = bitcast %union.ccb* %115 to %struct.TYPE_14__*
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 5
  store i8* %114, i8** %117, align 8
  %118 = load i64, i64* @CAM_BUS_WILDCARD, align 8
  %119 = load %union.ccb*, %union.ccb** %7, align 8
  %120 = bitcast %union.ccb* %119 to %struct.TYPE_14__*
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  store i32 2240, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %union.ccb*, %union.ccb** %7, align 8
  %124 = bitcast %union.ccb* %123 to %struct.TYPE_13__*
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call %union.ccb* @malloc(i32 %126)
  %128 = bitcast %union.ccb* %127 to %struct.dev_match_result*
  %129 = bitcast %struct.dev_match_result* %128 to %union.ccb*
  %130 = load %union.ccb*, %union.ccb** %7, align 8
  %131 = bitcast %union.ccb* %130 to %struct.TYPE_13__*
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 5
  store %union.ccb* %129, %union.ccb** %132, align 8
  %133 = load %union.ccb*, %union.ccb** %7, align 8
  %134 = bitcast %union.ccb* %133 to %struct.TYPE_13__*
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 5
  %136 = load %union.ccb*, %union.ccb** %135, align 8
  %137 = icmp eq %union.ccb* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %111
  %139 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %358

140:                                              ; preds = %111
  %141 = load %union.ccb*, %union.ccb** %7, align 8
  %142 = bitcast %union.ccb* %141 to %struct.TYPE_13__*
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  store i32 0, i32* %143, align 4
  %144 = load %union.ccb*, %union.ccb** %7, align 8
  %145 = bitcast %union.ccb* %144 to %struct.TYPE_13__*
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  store i32 1, i32* %146, align 8
  %147 = load %union.ccb*, %union.ccb** %7, align 8
  %148 = bitcast %union.ccb* %147 to %struct.TYPE_13__*
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 3
  store i32 112, i32* %149, align 4
  %150 = load %union.ccb*, %union.ccb** %7, align 8
  %151 = bitcast %union.ccb* %150 to %struct.TYPE_13__*
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call %union.ccb* @malloc(i32 %153)
  %155 = bitcast %union.ccb* %154 to %struct.dev_match_pattern*
  %156 = bitcast %struct.dev_match_pattern* %155 to %union.ccb*
  %157 = load %union.ccb*, %union.ccb** %7, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_13__*
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 6
  store %union.ccb* %156, %union.ccb** %159, align 8
  %160 = load %union.ccb*, %union.ccb** %7, align 8
  %161 = bitcast %union.ccb* %160 to %struct.TYPE_13__*
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 6
  %163 = load %union.ccb*, %union.ccb** %162, align 8
  %164 = icmp eq %union.ccb* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %140
  %166 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %358

167:                                              ; preds = %140
  %168 = load i64, i64* @DEV_MATCH_BUS, align 8
  %169 = load %union.ccb*, %union.ccb** %7, align 8
  %170 = bitcast %union.ccb* %169 to %struct.TYPE_13__*
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 6
  %172 = load %union.ccb*, %union.ccb** %171, align 8
  %173 = getelementptr inbounds %union.ccb, %union.ccb* %172, i64 0
  %174 = bitcast %union.ccb* %173 to i64*
  store i64 %168, i64* %174, align 8
  %175 = load i32, i32* @BUS_MATCH_ANY, align 4
  %176 = load %union.ccb*, %union.ccb** %7, align 8
  %177 = bitcast %union.ccb* %176 to %struct.TYPE_13__*
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 6
  %179 = load %union.ccb*, %union.ccb** %178, align 8
  %180 = getelementptr inbounds %union.ccb, %union.ccb* %179, i64 0
  %181 = bitcast %union.ccb* %180 to %struct.TYPE_11__*
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  store i32 %175, i32* %183, align 8
  br label %184

184:                                              ; preds = %355, %167
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @CAMIOCOMMAND, align 4
  %187 = load %union.ccb*, %union.ccb** %7, align 8
  %188 = call i32 @ioctl(i32 %185, i32 %186, %union.ccb* %187)
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %358

192:                                              ; preds = %184
  %193 = load %union.ccb*, %union.ccb** %7, align 8
  %194 = bitcast %union.ccb* %193 to %struct.TYPE_14__*
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @CAM_REQ_CMP, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %213, label %199

199:                                              ; preds = %192
  %200 = load %union.ccb*, %union.ccb** %7, align 8
  %201 = bitcast %union.ccb* %200 to %struct.TYPE_13__*
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @CAM_DEV_MATCH_LAST, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %223

206:                                              ; preds = %199
  %207 = load %union.ccb*, %union.ccb** %7, align 8
  %208 = bitcast %union.ccb* %207 to %struct.TYPE_13__*
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @CAM_DEV_MATCH_MORE, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %206, %192
  %214 = load %union.ccb*, %union.ccb** %7, align 8
  %215 = bitcast %union.ccb* %214 to %struct.TYPE_14__*
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load %union.ccb*, %union.ccb** %7, align 8
  %219 = bitcast %union.ccb* %218 to %struct.TYPE_13__*
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %217, i64 %221)
  store i32 1, i32* %9, align 4
  br label %358

223:                                              ; preds = %206, %199
  store i32 0, i32* %11, align 4
  br label %224

224:                                              ; preds = %337, %223
  %225 = load i32, i32* %11, align 4
  %226 = load %union.ccb*, %union.ccb** %7, align 8
  %227 = bitcast %union.ccb* %226 to %struct.TYPE_13__*
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp ult i32 %225, %229
  br i1 %230, label %231, label %340

231:                                              ; preds = %224
  %232 = load %union.ccb*, %union.ccb** %7, align 8
  %233 = bitcast %union.ccb* %232 to %struct.TYPE_13__*
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 5
  %235 = load %union.ccb*, %union.ccb** %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %union.ccb, %union.ccb* %235, i64 %237
  %239 = bitcast %union.ccb* %238 to i64*
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @DEV_MATCH_BUS, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %231
  br label %337

244:                                              ; preds = %231
  %245 = load %union.ccb*, %union.ccb** %7, align 8
  %246 = bitcast %union.ccb* %245 to %struct.TYPE_13__*
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 5
  %248 = load %union.ccb*, %union.ccb** %247, align 8
  %249 = load i32, i32* %11, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %union.ccb, %union.ccb* %248, i64 %250
  %252 = bitcast %union.ccb* %251 to %struct.TYPE_12__*
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  store %struct.bus_match_result* %253, %struct.bus_match_result** %12, align 8
  %254 = load %struct.bus_match_result*, %struct.bus_match_result** %12, align 8
  %255 = getelementptr inbounds %struct.bus_match_result, %struct.bus_match_result* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @CAM_XPT_PATH_ID, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %244
  br label %337

260:                                              ; preds = %244
  %261 = load i32, i32* %5, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %260
  %264 = load i8*, i8** @XPT_SCAN_BUS, align 8
  br label %267

265:                                              ; preds = %260
  %266 = load i8*, i8** @XPT_RESET_BUS, align 8
  br label %267

267:                                              ; preds = %265, %263
  %268 = phi i8* [ %264, %263 ], [ %266, %265 ]
  %269 = load %union.ccb*, %union.ccb** %6, align 8
  %270 = bitcast %union.ccb* %269 to %struct.TYPE_14__*
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 5
  store i8* %268, i8** %271, align 8
  %272 = load %struct.bus_match_result*, %struct.bus_match_result** %12, align 8
  %273 = getelementptr inbounds %struct.bus_match_result, %struct.bus_match_result* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load %union.ccb*, %union.ccb** %6, align 8
  %276 = bitcast %union.ccb* %275 to %struct.TYPE_14__*
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  store i64 %274, i64* %277, align 8
  %278 = load i8*, i8** @CAM_TARGET_WILDCARD, align 8
  %279 = load %union.ccb*, %union.ccb** %6, align 8
  %280 = bitcast %union.ccb* %279 to %struct.TYPE_14__*
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 4
  store i8* %278, i8** %281, align 8
  %282 = load i8*, i8** @CAM_LUN_WILDCARD, align 8
  %283 = load %union.ccb*, %union.ccb** %6, align 8
  %284 = bitcast %union.ccb* %283 to %struct.TYPE_14__*
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 3
  store i8* %282, i8** %285, align 8
  %286 = load i8*, i8** @CAM_FLAG_NONE, align 8
  %287 = load %union.ccb*, %union.ccb** %6, align 8
  %288 = bitcast %union.ccb* %287 to %struct.TYPE_8__*
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  store i8* %286, i8** %289, align 8
  %290 = load %union.ccb*, %union.ccb** %6, align 8
  %291 = bitcast %union.ccb* %290 to %struct.TYPE_14__*
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  store i32 5, i32* %293, align 4
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* @CAMIOCOMMAND, align 4
  %296 = load %union.ccb*, %union.ccb** %6, align 8
  %297 = call i32 @ioctl(i32 %294, i32 %295, %union.ccb* %296)
  %298 = icmp eq i32 %297, -1
  br i1 %298, label %299, label %301

299:                                              ; preds = %267
  %300 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %358

301:                                              ; preds = %267
  %302 = load %union.ccb*, %union.ccb** %6, align 8
  %303 = bitcast %union.ccb* %302 to %struct.TYPE_14__*
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @CAM_STATUS_MASK, align 4
  %307 = and i32 %305, %306
  %308 = load i32, i32* @CAM_REQ_CMP, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %320

310:                                              ; preds = %301
  %311 = load i32, i32* @stdout, align 4
  %312 = load i32, i32* %5, align 4
  %313 = icmp ne i32 %312, 0
  %314 = zext i1 %313 to i64
  %315 = select i1 %313, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %316 = load %struct.bus_match_result*, %struct.bus_match_result** %12, align 8
  %317 = getelementptr inbounds %struct.bus_match_result, %struct.bus_match_result* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = call i32 (i32, i8*, i8*, i64, ...) @fprintf(i32 %311, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %315, i64 %318)
  br label %336

320:                                              ; preds = %301
  %321 = load i32, i32* @stderr, align 4
  %322 = load i32, i32* %5, align 4
  %323 = icmp ne i32 %322, 0
  %324 = zext i1 %323 to i64
  %325 = select i1 %323, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %326 = load %struct.bus_match_result*, %struct.bus_match_result** %12, align 8
  %327 = getelementptr inbounds %struct.bus_match_result, %struct.bus_match_result* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load %union.ccb*, %union.ccb** %6, align 8
  %330 = bitcast %union.ccb* %329 to %struct.TYPE_14__*
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @CAM_STATUS_MASK, align 4
  %334 = and i32 %332, %333
  %335 = call i32 (i32, i8*, i8*, i64, ...) @fprintf(i32 %321, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %325, i64 %328, i32 %334)
  store i32 1, i32* %9, align 4
  br label %336

336:                                              ; preds = %320, %310
  br label %337

337:                                              ; preds = %336, %259, %243
  %338 = load i32, i32* %11, align 4
  %339 = add i32 %338, 1
  store i32 %339, i32* %11, align 4
  br label %224

340:                                              ; preds = %224
  br label %341

341:                                              ; preds = %340
  %342 = load %union.ccb*, %union.ccb** %7, align 8
  %343 = bitcast %union.ccb* %342 to %struct.TYPE_14__*
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @CAM_REQ_CMP, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %348, label %355

348:                                              ; preds = %341
  %349 = load %union.ccb*, %union.ccb** %7, align 8
  %350 = bitcast %union.ccb* %349 to %struct.TYPE_13__*
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 4
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @CAM_DEV_MATCH_MORE, align 8
  %354 = icmp eq i64 %352, %353
  br label %355

355:                                              ; preds = %348, %341
  %356 = phi i1 [ false, %341 ], [ %354, %348 ]
  br i1 %356, label %184, label %357

357:                                              ; preds = %355
  br label %358

358:                                              ; preds = %357, %299, %213, %190, %165, %138, %109, %104, %71, %26
  %359 = load i32, i32* %8, align 4
  %360 = icmp ne i32 %359, -1
  br i1 %360, label %361, label %364

361:                                              ; preds = %358
  %362 = load i32, i32* %8, align 4
  %363 = call i32 @close(i32 %362)
  br label %364

364:                                              ; preds = %361, %358
  %365 = load %union.ccb*, %union.ccb** %7, align 8
  %366 = icmp ne %union.ccb* %365, null
  br i1 %366, label %367, label %380

367:                                              ; preds = %364
  %368 = load %union.ccb*, %union.ccb** %7, align 8
  %369 = bitcast %union.ccb* %368 to %struct.TYPE_13__*
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 6
  %371 = load %union.ccb*, %union.ccb** %370, align 8
  %372 = call i32 @free(%union.ccb* %371)
  %373 = load %union.ccb*, %union.ccb** %7, align 8
  %374 = bitcast %union.ccb* %373 to %struct.TYPE_13__*
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 5
  %376 = load %union.ccb*, %union.ccb** %375, align 8
  %377 = call i32 @free(%union.ccb* %376)
  %378 = load %union.ccb*, %union.ccb** %7, align 8
  %379 = call i32 @free(%union.ccb* %378)
  br label %380

380:                                              ; preds = %367, %364
  %381 = load %union.ccb*, %union.ccb** %6, align 8
  %382 = call i32 @free(%union.ccb* %381)
  %383 = load i32, i32* %9, align 4
  store i32 %383, i32* %3, align 4
  br label %384

384:                                              ; preds = %380, %17
  %385 = load i32, i32* %3, align 4
  ret i32 %385
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local %union.ccb* @malloc(i32) #1

declare dso_local i32 @bzero(%union.ccb*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %union.ccb*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i64, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
