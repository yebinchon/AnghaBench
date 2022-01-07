; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_continue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_area = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_10__*, i64)*, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i32, i32** }
%struct.mesh_state = type { i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.query_info = type { i32 }

@MESH_MAX_ACTIVATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"internal error: looping module (%s) stopped\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"pass error for qstate\00", align 1
@module_error = common dso_local global i32 0, align 4
@module_wait_module = common dso_local global i32 0, align 4
@module_restart_next = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Cannot pass to next module; at last module\00", align 1
@VERB_QUERY = common dso_local global i32 0, align 4
@module_event_pass = common dso_local global i32 0, align 4
@module_wait_subquery = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"module cannot wait for subquery, subquery list empty\00", align 1
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RCODE_SERVFAIL = common dso_local global i64 0, align 8
@module_finished = common dso_local global i32 0, align 4
@module_event_moddone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mesh_area*, %struct.mesh_state*, i32, i32*)* @mesh_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_continue(%struct.mesh_area* %0, %struct.mesh_state* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mesh_area*, align 8
  %7 = alloca %struct.mesh_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.query_info*, align 8
  %12 = alloca i32, align 4
  store %struct.mesh_area* %0, %struct.mesh_area** %6, align 8
  store %struct.mesh_state* %1, %struct.mesh_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %14 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %18 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MESH_MAX_ACTIVATION, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %4
  %23 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %24 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %25, align 8
  %27 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %28 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %26, i64 %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %37 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = call i32 @log_query_info(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %38)
  %40 = load i32, i32* @module_error, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %22, %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @module_wait_module, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @module_restart_next, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %159

49:                                               ; preds = %45, %41
  %50 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %51 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %56 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %60 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %58, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %49
  %65 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @VERB_QUERY, align 4
  %67 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %68 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = call i32 @log_query_info(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %69)
  %71 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %72 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, -1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %77 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %78 = load i32, i32* @module_error, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @mesh_continue(%struct.mesh_area* %76, %struct.mesh_state* %77, i32 %78, i32* %79)
  store i32 %80, i32* %5, align 4
  br label %251

81:                                               ; preds = %49
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @module_restart_next, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %156

85:                                               ; preds = %81
  %86 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %87 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %144, %85
  %92 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %93 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %97 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %95, %99
  br i1 %100, label %101, label %150

101:                                              ; preds = %91
  %102 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %103 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %104, align 8
  %106 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %107 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %105, i64 %109
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_10__*, i64)** %112, align 8
  %114 = call i32 @fptr_whitelist_mod_clear(i32 (%struct.TYPE_10__*, i64)* %113)
  %115 = call i32 @fptr_ok(i32 %114)
  %116 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %117 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %118, align 8
  %120 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %121 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %119, i64 %123
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32 (%struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_10__*, i64)** %126, align 8
  %128 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %129 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %128, i32 0, i32 1
  %130 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %131 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 %127(%struct.TYPE_10__* %129, i64 %133)
  %135 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %136 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 4
  %138 = load i32**, i32*** %137, align 8
  %139 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %140 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i32*, i32** %138, i64 %142
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %101
  %145 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %146 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %147, align 8
  br label %91

150:                                              ; preds = %91
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %154 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i64 %152, i64* %155, align 8
  br label %156

156:                                              ; preds = %150, %81
  %157 = load i32, i32* @module_event_pass, align 4
  %158 = load i32*, i32** %9, align 8
  store i32 %157, i32* %158, align 4
  store i32 1, i32* %5, align 4
  br label %251

159:                                              ; preds = %45
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @module_wait_subquery, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %159
  %164 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %165 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %171 = load i32, i32* @VERB_QUERY, align 4
  %172 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %173 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  %175 = call i32 @log_query_info(i32 %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %174)
  %176 = load i32, i32* @module_error, align 4
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %169, %163, %159
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @module_error, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %193

181:                                              ; preds = %177
  %182 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %183 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %190 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %191 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  store i64 %189, i64* %192, align 8
  br label %193

193:                                              ; preds = %188, %181, %177
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @module_error, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %193
  %198 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %199 = call i32 @mesh_query_done(%struct.mesh_state* %198)
  %200 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %201 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %202 = call i32 @mesh_walk_supers(%struct.mesh_area* %200, %struct.mesh_state* %201)
  %203 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %204 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %203, i32 0, i32 1
  %205 = call i32 @mesh_state_delete(%struct.TYPE_10__* %204)
  store i32 0, i32* %5, align 4
  br label %251

206:                                              ; preds = %193
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @module_finished, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %250

210:                                              ; preds = %206
  %211 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %212 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %242

216:                                              ; preds = %210
  store %struct.query_info* null, %struct.query_info** %11, align 8
  %217 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %218 = call i32 @mesh_query_done(%struct.mesh_state* %217)
  %219 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %220 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %221 = call i32 @mesh_walk_supers(%struct.mesh_area* %219, %struct.mesh_state* %220)
  %222 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %223 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %216
  %228 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %229 = call i32 @mesh_copy_qinfo(%struct.mesh_state* %228, %struct.query_info** %11, i32* %12)
  br label %230

230:                                              ; preds = %227, %216
  %231 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %232 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %231, i32 0, i32 1
  %233 = call i32 @mesh_state_delete(%struct.TYPE_10__* %232)
  %234 = load %struct.query_info*, %struct.query_info** %11, align 8
  %235 = icmp ne %struct.query_info* %234, null
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %238 = load %struct.query_info*, %struct.query_info** %11, align 8
  %239 = load i32, i32* %12, align 4
  %240 = call i32 @mesh_schedule_prefetch(%struct.mesh_area* %237, %struct.query_info* %238, i32 %239, i32 0, i32 1)
  br label %241

241:                                              ; preds = %236, %230
  store i32 0, i32* %5, align 4
  br label %251

242:                                              ; preds = %210
  %243 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %244 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = add i64 %246, -1
  store i64 %247, i64* %245, align 8
  %248 = load i32, i32* @module_event_moddone, align 4
  %249 = load i32*, i32** %9, align 8
  store i32 %248, i32* %249, align 4
  store i32 1, i32* %5, align 4
  br label %251

250:                                              ; preds = %206
  store i32 0, i32* %5, align 4
  br label %251

251:                                              ; preds = %250, %242, %241, %197, %156, %64
  %252 = load i32, i32* %5, align 4
  ret i32 %252
}

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @log_query_info(i32, i8*, i32*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_mod_clear(i32 (%struct.TYPE_10__*, i64)*) #1

declare dso_local i32 @mesh_query_done(%struct.mesh_state*) #1

declare dso_local i32 @mesh_walk_supers(%struct.mesh_area*, %struct.mesh_state*) #1

declare dso_local i32 @mesh_state_delete(%struct.TYPE_10__*) #1

declare dso_local i32 @mesh_copy_qinfo(%struct.mesh_state*, %struct.query_info**, i32*) #1

declare dso_local i32 @mesh_schedule_prefetch(%struct.mesh_area*, %struct.query_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
