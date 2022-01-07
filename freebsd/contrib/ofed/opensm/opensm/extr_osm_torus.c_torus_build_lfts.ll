; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_torus_build_lfts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_torus_build_lfts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus_context = type { %struct.torus*, %struct.TYPE_5__*, %struct.fabric }
%struct.torus = type { i32, %struct.TYPE_5__*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fabric = type { i64, i64, i64, %struct.TYPE_5__* }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [120 x i8] c"ERR 4E44: Routing engine list contains torus-2QoS. Enable QoS for correct operation (-Q or 'qos TRUE' in opensm.conf).\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERR 4E45: allocating torus: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@OSM_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [97 x i8] c"Found fabric w/ %d links, %d switches, %d CA ports, minimum data VLs: endport %d, switchport %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Looking for %d x %d x %d %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"torus\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"ERR 4E57: build_torus finished with errors\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Built %d x %d x %d %s w/ %d links, %d switches, %d CA ports\0A\00", align 1
@NOTIFY_CHANGES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"qos_ca\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"qos_sw0\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"qos_rtr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @torus_build_lfts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @torus_build_lfts(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.torus_context*, align 8
  %6 = alloca %struct.fabric*, align 8
  %7 = alloca %struct.torus*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.torus_context*
  store %struct.torus_context* %11, %struct.torus_context** %5, align 8
  %12 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %13 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %22 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* @OSM_LOG_ERROR, align 4
  %26 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %24, i32 %25, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %270

28:                                               ; preds = %1
  %29 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %30 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %29, i32 0, i32 2
  store %struct.fabric* %30, %struct.fabric** %6, align 8
  %31 = load %struct.fabric*, %struct.fabric** %6, align 8
  %32 = call i32 @teardown_fabric(%struct.fabric* %31)
  %33 = call %struct.torus* @calloc(i32 1, i32 64)
  store %struct.torus* %33, %struct.torus** %7, align 8
  %34 = load %struct.torus*, %struct.torus** %7, align 8
  %35 = icmp ne %struct.torus* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %28
  %37 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %38 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* @OSM_LOG_ERROR, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %40, i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %209

45:                                               ; preds = %28
  %46 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %47 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load %struct.torus*, %struct.torus** %7, align 8
  %50 = getelementptr inbounds %struct.torus, %struct.torus* %49, i32 0, i32 1
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %50, align 8
  %51 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %52 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load %struct.fabric*, %struct.fabric** %6, align 8
  %55 = getelementptr inbounds %struct.fabric, %struct.fabric* %54, i32 0, i32 3
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %55, align 8
  %56 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %57 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fabric*, %struct.fabric** %6, align 8
  %64 = load %struct.torus*, %struct.torus** %7, align 8
  %65 = call i32 @parse_config(i32 %62, %struct.fabric* %63, %struct.torus* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %45
  br label %209

68:                                               ; preds = %45
  %69 = load %struct.fabric*, %struct.fabric** %6, align 8
  %70 = call i32 @capture_fabric(%struct.fabric* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %209

73:                                               ; preds = %68
  %74 = load %struct.torus*, %struct.torus** %7, align 8
  %75 = getelementptr inbounds %struct.torus, %struct.torus* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* @OSM_LOG_INFO, align 4
  %79 = load %struct.fabric*, %struct.fabric** %6, align 8
  %80 = getelementptr inbounds %struct.fabric, %struct.fabric* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.fabric*, %struct.fabric** %6, align 8
  %84 = getelementptr inbounds %struct.fabric, %struct.fabric* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.fabric*, %struct.fabric** %6, align 8
  %88 = getelementptr inbounds %struct.fabric, %struct.fabric* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %92 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %99 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %77, i32 %78, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %86, i32 %90, i32 %97, i32 %104)
  %106 = load %struct.torus*, %struct.torus** %7, align 8
  %107 = load %struct.fabric*, %struct.fabric** %6, align 8
  %108 = call i32 @verify_setup(%struct.torus* %106, %struct.fabric* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %73
  br label %209

111:                                              ; preds = %73
  %112 = load %struct.torus*, %struct.torus** %7, align 8
  %113 = getelementptr inbounds %struct.torus, %struct.torus* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* @OSM_LOG_INFO, align 4
  %117 = load %struct.torus*, %struct.torus** %7, align 8
  %118 = getelementptr inbounds %struct.torus, %struct.torus* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.torus*, %struct.torus** %7, align 8
  %122 = getelementptr inbounds %struct.torus, %struct.torus* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.torus*, %struct.torus** %7, align 8
  %126 = getelementptr inbounds %struct.torus, %struct.torus* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.torus*, %struct.torus** %7, align 8
  %130 = getelementptr inbounds %struct.torus, %struct.torus* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @ALL_MESH(i32 %131)
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %136 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %115, i32 %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %124, i32 %128, i8* %135)
  %137 = load %struct.fabric*, %struct.fabric** %6, align 8
  %138 = load %struct.torus*, %struct.torus** %7, align 8
  %139 = call i32 @build_torus(%struct.fabric* %137, %struct.torus* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %111
  %142 = load %struct.torus*, %struct.torus** %7, align 8
  %143 = getelementptr inbounds %struct.torus, %struct.torus* %142, i32 0, i32 1
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* @OSM_LOG_ERROR, align 4
  %147 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %145, i32 %146, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %209

148:                                              ; preds = %111
  %149 = load %struct.torus*, %struct.torus** %7, align 8
  %150 = getelementptr inbounds %struct.torus, %struct.torus* %149, i32 0, i32 1
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* @OSM_LOG_INFO, align 4
  %154 = load %struct.torus*, %struct.torus** %7, align 8
  %155 = getelementptr inbounds %struct.torus, %struct.torus* %154, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = load %struct.torus*, %struct.torus** %7, align 8
  %159 = getelementptr inbounds %struct.torus, %struct.torus* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = load %struct.torus*, %struct.torus** %7, align 8
  %163 = getelementptr inbounds %struct.torus, %struct.torus* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = load %struct.torus*, %struct.torus** %7, align 8
  %167 = getelementptr inbounds %struct.torus, %struct.torus* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @ALL_MESH(i32 %168)
  %170 = icmp ne i64 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %173 = load %struct.torus*, %struct.torus** %7, align 8
  %174 = getelementptr inbounds %struct.torus, %struct.torus* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = load %struct.torus*, %struct.torus** %7, align 8
  %178 = getelementptr inbounds %struct.torus, %struct.torus* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = load %struct.torus*, %struct.torus** %7, align 8
  %182 = getelementptr inbounds %struct.torus, %struct.torus* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %152, i32 %153, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %157, i32 %161, i32 %165, i8* %172, i32 %176, i32 %180, i32 %184)
  %186 = load %struct.fabric*, %struct.fabric** %6, align 8
  %187 = call i32 @diagnose_fabric(%struct.fabric* %186)
  %188 = load %struct.torus*, %struct.torus** %7, align 8
  %189 = getelementptr inbounds %struct.torus, %struct.torus* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @NOTIFY_CHANGES, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %148
  %195 = load %struct.torus*, %struct.torus** %7, align 8
  %196 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %197 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %196, i32 0, i32 0
  %198 = load %struct.torus*, %struct.torus** %197, align 8
  %199 = call i32 @report_torus_changes(%struct.torus* %195, %struct.torus* %198)
  br label %200

200:                                              ; preds = %194, %148
  %201 = load %struct.torus*, %struct.torus** %7, align 8
  %202 = load %struct.fabric*, %struct.fabric** %6, align 8
  %203 = call i64 @routable_torus(%struct.torus* %201, %struct.fabric* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.torus*, %struct.torus** %7, align 8
  %207 = call i32 @route_torus(%struct.torus* %206)
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %205, %200
  br label %209

209:                                              ; preds = %208, %141, %110, %72, %67, %36
  %210 = load i32, i32* %4, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %209
  %213 = load %struct.torus*, %struct.torus** %7, align 8
  %214 = icmp ne %struct.torus* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load %struct.torus*, %struct.torus** %7, align 8
  %217 = call i32 @teardown_torus(%struct.torus* %216)
  br label %218

218:                                              ; preds = %215, %212
  br label %266

219:                                              ; preds = %209
  %220 = load %struct.torus*, %struct.torus** %7, align 8
  %221 = getelementptr inbounds %struct.torus, %struct.torus* %220, i32 0, i32 1
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  store %struct.TYPE_6__* %224, %struct.TYPE_6__** %8, align 8
  %225 = load %struct.torus*, %struct.torus** %7, align 8
  %226 = getelementptr inbounds %struct.torus, %struct.torus* %225, i32 0, i32 1
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  store i32* %228, i32** %9, align 8
  %229 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %230 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %229, i32 0, i32 0
  %231 = load %struct.torus*, %struct.torus** %230, align 8
  %232 = icmp ne %struct.torus* %231, null
  br i1 %232, label %233, label %238

233:                                              ; preds = %219
  %234 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %235 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %234, i32 0, i32 0
  %236 = load %struct.torus*, %struct.torus** %235, align 8
  %237 = call i32 @teardown_torus(%struct.torus* %236)
  br label %238

238:                                              ; preds = %233, %219
  %239 = load %struct.torus*, %struct.torus** %7, align 8
  %240 = load %struct.torus_context*, %struct.torus_context** %5, align 8
  %241 = getelementptr inbounds %struct.torus_context, %struct.torus_context* %240, i32 0, i32 0
  store %struct.torus* %239, %struct.torus** %241, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 4
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i32*, i32** %9, align 8
  %247 = call i32 @check_qos_swe_config(i32* %243, i32* %245, i32* %246)
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 3
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i32*, i32** %9, align 8
  %253 = call i32 @check_qos_ep_config(i32* %249, i32* %251, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* %252)
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i32*, i32** %9, align 8
  %259 = call i32 @check_qos_ep_config(i32* %255, i32* %257, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* %258)
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32*, i32** %9, align 8
  %265 = call i32 @check_qos_ep_config(i32* %261, i32* %263, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* %264)
  br label %266

266:                                              ; preds = %238, %218
  %267 = load %struct.fabric*, %struct.fabric** %6, align 8
  %268 = call i32 @teardown_fabric(%struct.fabric* %267)
  %269 = load i32, i32* %4, align 4
  store i32 %269, i32* %2, align 4
  br label %270

270:                                              ; preds = %266, %20
  %271 = load i32, i32* %2, align 4
  ret i32 %271
}

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local i32 @teardown_fabric(%struct.fabric*) #1

declare dso_local %struct.torus* @calloc(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @parse_config(i32, %struct.fabric*, %struct.torus*) #1

declare dso_local i32 @capture_fabric(%struct.fabric*) #1

declare dso_local i32 @verify_setup(%struct.torus*, %struct.fabric*) #1

declare dso_local i64 @ALL_MESH(i32) #1

declare dso_local i32 @build_torus(%struct.fabric*, %struct.torus*) #1

declare dso_local i32 @diagnose_fabric(%struct.fabric*) #1

declare dso_local i32 @report_torus_changes(%struct.torus*, %struct.torus*) #1

declare dso_local i64 @routable_torus(%struct.torus*, %struct.fabric*) #1

declare dso_local i32 @route_torus(%struct.torus*) #1

declare dso_local i32 @teardown_torus(%struct.torus*) #1

declare dso_local i32 @check_qos_swe_config(i32*, i32*, i32*) #1

declare dso_local i32 @check_qos_ep_config(i32*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
