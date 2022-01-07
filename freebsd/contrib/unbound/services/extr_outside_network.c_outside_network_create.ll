; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outside_network_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outside_network_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outside_network = type { i64, i64, void (i8*)*, i32, i32, i32, i32, i64, i64, %struct.port_if*, %struct.port_if*, %struct.port_comm*, i32, %struct.comm_base*, i8*, i8*, %struct.TYPE_2__, i8*, i64, i64, %struct.dt_env*, i8*, %struct.ub_randstate*, %struct.infra_cache*, i64, i32, i32 }
%struct.port_if = type { i32 }
%struct.port_comm = type { %struct.port_comm*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.comm_base = type { i32 }
%struct.infra_cache = type { i32 }
%struct.ub_randstate = type { i32 }
%struct.dt_env = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no outgoing ports available\00", align 1
@pending_cmp = common dso_local global i32 0, align 4
@serviced_cmp = common dso_local global i32 0, align 4
@outnet_udp_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.outside_network* @outside_network_create(%struct.comm_base* %0, i64 %1, i64 %2, i8** %3, i32 %4, i32 %5, i32 %6, i64 %7, %struct.infra_cache* %8, %struct.ub_randstate* %9, i32 %10, i32* %11, i32 %12, i64 %13, i32 %14, void (i8*)* %15, i8* %16, i32 %17, i8* %18, i32 %19, %struct.dt_env* %20) #0 {
  %22 = alloca %struct.outside_network*, align 8
  %23 = alloca %struct.comm_base*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca %struct.infra_cache*, align 8
  %32 = alloca %struct.ub_randstate*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca void (i8*)*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i32, align 4
  %43 = alloca %struct.dt_env*, align 8
  %44 = alloca %struct.outside_network*, align 8
  %45 = alloca i64, align 8
  %46 = alloca %struct.port_comm*, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i32, align 4
  store %struct.comm_base* %0, %struct.comm_base** %23, align 8
  store i64 %1, i64* %24, align 8
  store i64 %2, i64* %25, align 8
  store i8** %3, i8*** %26, align 8
  store i32 %4, i32* %27, align 4
  store i32 %5, i32* %28, align 4
  store i32 %6, i32* %29, align 4
  store i64 %7, i64* %30, align 8
  store %struct.infra_cache* %8, %struct.infra_cache** %31, align 8
  store %struct.ub_randstate* %9, %struct.ub_randstate** %32, align 8
  store i32 %10, i32* %33, align 4
  store i32* %11, i32** %34, align 8
  store i32 %12, i32* %35, align 4
  store i64 %13, i64* %36, align 8
  store i32 %14, i32* %37, align 4
  store void (i8*)* %15, void (i8*)** %38, align 8
  store i8* %16, i8** %39, align 8
  store i32 %17, i32* %40, align 4
  store i8* %18, i8** %41, align 8
  store i32 %19, i32* %42, align 4
  store %struct.dt_env* %20, %struct.dt_env** %43, align 8
  %50 = call i64 @calloc(i32 1, i32 192)
  %51 = inttoptr i64 %50 to %struct.outside_network*
  store %struct.outside_network* %51, %struct.outside_network** %44, align 8
  %52 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %53 = icmp ne %struct.outside_network* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %21
  %55 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.outside_network* null, %struct.outside_network** %22, align 8
  br label %371

56:                                               ; preds = %21
  %57 = load %struct.comm_base*, %struct.comm_base** %23, align 8
  %58 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %59 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %58, i32 0, i32 26
  %60 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %61 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %60, i32 0, i32 25
  %62 = call i32 @comm_base_timept(%struct.comm_base* %57, i32* %59, i32* %61)
  %63 = load %struct.comm_base*, %struct.comm_base** %23, align 8
  %64 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %65 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %64, i32 0, i32 13
  store %struct.comm_base* %63, %struct.comm_base** %65, align 8
  %66 = load i64, i64* %30, align 8
  %67 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %68 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %70 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %69, i32 0, i32 24
  store i64 0, i64* %70, align 8
  %71 = load %struct.infra_cache*, %struct.infra_cache** %31, align 8
  %72 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %73 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %72, i32 0, i32 23
  store %struct.infra_cache* %71, %struct.infra_cache** %73, align 8
  %74 = load %struct.ub_randstate*, %struct.ub_randstate** %32, align 8
  %75 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %76 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %75, i32 0, i32 22
  store %struct.ub_randstate* %74, %struct.ub_randstate** %76, align 8
  %77 = load i8*, i8** %41, align 8
  %78 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %79 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %78, i32 0, i32 21
  store i8* %77, i8** %79, align 8
  %80 = load %struct.dt_env*, %struct.dt_env** %43, align 8
  %81 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %82 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %81, i32 0, i32 19
  store i64 0, i64* %82, align 8
  %83 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %84 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %83, i32 0, i32 18
  store i64 0, i64* %84, align 8
  %85 = load i64, i64* %36, align 8
  %86 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %87 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load void (i8*)*, void (i8*)** %38, align 8
  %89 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %90 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %89, i32 0, i32 2
  store void (i8*)* %88, void (i8*)** %90, align 8
  %91 = load i8*, i8** %39, align 8
  %92 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %93 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %92, i32 0, i32 17
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %33, align 4
  %95 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %96 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %40, align 4
  %98 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %99 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %37, align 4
  %101 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %102 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %42, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %56
  %106 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %107 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %106, i32 0, i32 6
  store i32 1, i32* %107, align 4
  %108 = load i32, i32* %42, align 4
  %109 = sdiv i32 %108, 1000
  %110 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %111 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %110, i32 0, i32 16
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load i32, i32* %42, align 4
  %114 = srem i32 %113, 1000
  %115 = mul nsw i32 %114, 1000
  %116 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %117 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %116, i32 0, i32 16
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  br label %119

119:                                              ; preds = %105, %56
  %120 = load i32, i32* %35, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load i64, i64* %25, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122, %119
  %126 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %127 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %128 = call i32 @outside_network_delete(%struct.outside_network* %127)
  store %struct.outside_network* null, %struct.outside_network** %22, align 8
  br label %371

129:                                              ; preds = %122
  store i32 0, i32* %29, align 4
  %130 = load i8**, i8*** %26, align 8
  %131 = load i32, i32* %27, align 4
  %132 = load i32, i32* %28, align 4
  %133 = load i32, i32* %29, align 4
  %134 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %135 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %134, i32 0, i32 7
  %136 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %137 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %136, i32 0, i32 8
  %138 = call i32 @calc_num46(i8** %130, i32 %131, i32 %132, i32 %133, i64* %135, i64* %137)
  %139 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %140 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %139, i32 0, i32 7
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %129
  %144 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %145 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i64 @calloc(i32 %147, i32 4)
  %149 = inttoptr i64 %148 to %struct.port_if*
  %150 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %151 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %150, i32 0, i32 9
  store %struct.port_if* %149, %struct.port_if** %151, align 8
  %152 = icmp ne %struct.port_if* %149, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %143
  %154 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %155 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %156 = call i32 @outside_network_delete(%struct.outside_network* %155)
  store %struct.outside_network* null, %struct.outside_network** %22, align 8
  br label %371

157:                                              ; preds = %143
  br label %158

158:                                              ; preds = %157, %129
  %159 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %160 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %159, i32 0, i32 8
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %158
  %164 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %165 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %164, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i64 @calloc(i32 %167, i32 4)
  %169 = inttoptr i64 %168 to %struct.port_if*
  %170 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %171 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %170, i32 0, i32 10
  store %struct.port_if* %169, %struct.port_if** %171, align 8
  %172 = icmp ne %struct.port_if* %169, null
  br i1 %172, label %177, label %173

173:                                              ; preds = %163
  %174 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %175 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %176 = call i32 @outside_network_delete(%struct.outside_network* %175)
  store %struct.outside_network* null, %struct.outside_network** %22, align 8
  br label %371

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %177, %158
  %179 = load i64, i64* %24, align 8
  %180 = call i32 @sldns_buffer_new(i64 %179)
  %181 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %182 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %181, i32 0, i32 12
  store i32 %180, i32* %182, align 8
  %183 = icmp ne i32 %180, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %178
  %185 = load i32, i32* @pending_cmp, align 4
  %186 = call i8* @rbtree_create(i32 %185)
  %187 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %188 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %187, i32 0, i32 15
  store i8* %186, i8** %188, align 8
  %189 = icmp ne i8* %186, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %184
  %191 = load i32, i32* @serviced_cmp, align 4
  %192 = call i8* @rbtree_create(i32 %191)
  %193 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %194 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %193, i32 0, i32 14
  store i8* %192, i8** %194, align 8
  %195 = icmp ne i8* %192, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %190
  %197 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %198 = load i64, i64* %24, align 8
  %199 = call i32 @create_pending_tcp(%struct.outside_network* %197, i64 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %196, %190, %184, %178
  %202 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %203 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %204 = call i32 @outside_network_delete(%struct.outside_network* %203)
  store %struct.outside_network* null, %struct.outside_network** %22, align 8
  br label %371

205:                                              ; preds = %196
  store i64 0, i64* %45, align 8
  br label %206

206:                                              ; preds = %250, %205
  %207 = load i64, i64* %45, align 8
  %208 = load i64, i64* %25, align 8
  %209 = icmp ult i64 %207, %208
  br i1 %209, label %210, label %253

210:                                              ; preds = %206
  %211 = call i64 @calloc(i32 1, i32 16)
  %212 = inttoptr i64 %211 to %struct.port_comm*
  store %struct.port_comm* %212, %struct.port_comm** %46, align 8
  %213 = load %struct.port_comm*, %struct.port_comm** %46, align 8
  %214 = icmp ne %struct.port_comm* %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %217 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %218 = call i32 @outside_network_delete(%struct.outside_network* %217)
  store %struct.outside_network* null, %struct.outside_network** %22, align 8
  br label %371

219:                                              ; preds = %210
  %220 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %221 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %220, i32 0, i32 13
  %222 = load %struct.comm_base*, %struct.comm_base** %221, align 8
  %223 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %224 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %223, i32 0, i32 12
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @outnet_udp_cb, align 4
  %227 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %228 = call i32 @comm_point_create_udp(%struct.comm_base* %222, i32 -1, i32 %225, i32 %226, %struct.outside_network* %227)
  %229 = load %struct.port_comm*, %struct.port_comm** %46, align 8
  %230 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 8
  %231 = load %struct.port_comm*, %struct.port_comm** %46, align 8
  %232 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %219
  %236 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %237 = load %struct.port_comm*, %struct.port_comm** %46, align 8
  %238 = call i32 @free(%struct.port_comm* %237)
  %239 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %240 = call i32 @outside_network_delete(%struct.outside_network* %239)
  store %struct.outside_network* null, %struct.outside_network** %22, align 8
  br label %371

241:                                              ; preds = %219
  %242 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %243 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %242, i32 0, i32 11
  %244 = load %struct.port_comm*, %struct.port_comm** %243, align 8
  %245 = load %struct.port_comm*, %struct.port_comm** %46, align 8
  %246 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %245, i32 0, i32 0
  store %struct.port_comm* %244, %struct.port_comm** %246, align 8
  %247 = load %struct.port_comm*, %struct.port_comm** %46, align 8
  %248 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %249 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %248, i32 0, i32 11
  store %struct.port_comm* %247, %struct.port_comm** %249, align 8
  br label %250

250:                                              ; preds = %241
  %251 = load i64, i64* %45, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %45, align 8
  br label %206

253:                                              ; preds = %206
  %254 = load i32, i32* %27, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %291

256:                                              ; preds = %253
  %257 = load i32, i32* %28, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %273

259:                                              ; preds = %256
  %260 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %261 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %260, i32 0, i32 9
  %262 = load %struct.port_if*, %struct.port_if** %261, align 8
  %263 = getelementptr inbounds %struct.port_if, %struct.port_if* %262, i64 0
  %264 = load i32*, i32** %34, align 8
  %265 = load i32, i32* %35, align 4
  %266 = load i64, i64* %25, align 8
  %267 = call i32 @setup_if(%struct.port_if* %263, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %264, i32 %265, i64 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %259
  %270 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %271 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %272 = call i32 @outside_network_delete(%struct.outside_network* %271)
  store %struct.outside_network* null, %struct.outside_network** %22, align 8
  br label %371

273:                                              ; preds = %259, %256
  %274 = load i32, i32* %29, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %290

276:                                              ; preds = %273
  %277 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %278 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %277, i32 0, i32 10
  %279 = load %struct.port_if*, %struct.port_if** %278, align 8
  %280 = getelementptr inbounds %struct.port_if, %struct.port_if* %279, i64 0
  %281 = load i32*, i32** %34, align 8
  %282 = load i32, i32* %35, align 4
  %283 = load i64, i64* %25, align 8
  %284 = call i32 @setup_if(%struct.port_if* %280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %281, i32 %282, i64 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %276
  %287 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %288 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %289 = call i32 @outside_network_delete(%struct.outside_network* %288)
  store %struct.outside_network* null, %struct.outside_network** %22, align 8
  br label %371

290:                                              ; preds = %276, %273
  br label %369

291:                                              ; preds = %253
  store i64 0, i64* %47, align 8
  store i64 0, i64* %48, align 8
  store i32 0, i32* %49, align 4
  br label %292

292:                                              ; preds = %365, %291
  %293 = load i32, i32* %49, align 4
  %294 = load i32, i32* %27, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %368

296:                                              ; preds = %292
  %297 = load i8**, i8*** %26, align 8
  %298 = load i32, i32* %49, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8*, i8** %297, i64 %299
  %301 = load i8*, i8** %300, align 8
  %302 = call i64 @str_is_ip6(i8* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %330

304:                                              ; preds = %296
  %305 = load i32, i32* %29, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %330

307:                                              ; preds = %304
  %308 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %309 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %308, i32 0, i32 10
  %310 = load %struct.port_if*, %struct.port_if** %309, align 8
  %311 = load i64, i64* %48, align 8
  %312 = getelementptr inbounds %struct.port_if, %struct.port_if* %310, i64 %311
  %313 = load i8**, i8*** %26, align 8
  %314 = load i32, i32* %49, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8*, i8** %313, i64 %315
  %317 = load i8*, i8** %316, align 8
  %318 = load i32*, i32** %34, align 8
  %319 = load i32, i32* %35, align 4
  %320 = load i64, i64* %25, align 8
  %321 = call i32 @setup_if(%struct.port_if* %312, i8* %317, i32* %318, i32 %319, i64 %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %307
  %324 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %325 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %326 = call i32 @outside_network_delete(%struct.outside_network* %325)
  store %struct.outside_network* null, %struct.outside_network** %22, align 8
  br label %371

327:                                              ; preds = %307
  %328 = load i64, i64* %48, align 8
  %329 = add i64 %328, 1
  store i64 %329, i64* %48, align 8
  br label %330

330:                                              ; preds = %327, %304, %296
  %331 = load i8**, i8*** %26, align 8
  %332 = load i32, i32* %49, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8*, i8** %331, i64 %333
  %335 = load i8*, i8** %334, align 8
  %336 = call i64 @str_is_ip6(i8* %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %364, label %338

338:                                              ; preds = %330
  %339 = load i32, i32* %28, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %364

341:                                              ; preds = %338
  %342 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %343 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %342, i32 0, i32 9
  %344 = load %struct.port_if*, %struct.port_if** %343, align 8
  %345 = load i64, i64* %47, align 8
  %346 = getelementptr inbounds %struct.port_if, %struct.port_if* %344, i64 %345
  %347 = load i8**, i8*** %26, align 8
  %348 = load i32, i32* %49, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %347, i64 %349
  %351 = load i8*, i8** %350, align 8
  %352 = load i32*, i32** %34, align 8
  %353 = load i32, i32* %35, align 4
  %354 = load i64, i64* %25, align 8
  %355 = call i32 @setup_if(%struct.port_if* %346, i8* %351, i32* %352, i32 %353, i64 %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %341
  %358 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %359 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  %360 = call i32 @outside_network_delete(%struct.outside_network* %359)
  store %struct.outside_network* null, %struct.outside_network** %22, align 8
  br label %371

361:                                              ; preds = %341
  %362 = load i64, i64* %47, align 8
  %363 = add i64 %362, 1
  store i64 %363, i64* %47, align 8
  br label %364

364:                                              ; preds = %361, %338, %330
  br label %365

365:                                              ; preds = %364
  %366 = load i32, i32* %49, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %49, align 4
  br label %292

368:                                              ; preds = %292
  br label %369

369:                                              ; preds = %368, %290
  %370 = load %struct.outside_network*, %struct.outside_network** %44, align 8
  store %struct.outside_network* %370, %struct.outside_network** %22, align 8
  br label %371

371:                                              ; preds = %369, %357, %323, %286, %269, %235, %215, %201, %173, %153, %125, %54
  %372 = load %struct.outside_network*, %struct.outside_network** %22, align 8
  ret %struct.outside_network* %372
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @comm_base_timept(%struct.comm_base*, i32*, i32*) #1

declare dso_local i32 @outside_network_delete(%struct.outside_network*) #1

declare dso_local i32 @calc_num46(i8**, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @sldns_buffer_new(i64) #1

declare dso_local i8* @rbtree_create(i32) #1

declare dso_local i32 @create_pending_tcp(%struct.outside_network*, i64) #1

declare dso_local i32 @comm_point_create_udp(%struct.comm_base*, i32, i32, i32, %struct.outside_network*) #1

declare dso_local i32 @free(%struct.port_comm*) #1

declare dso_local i32 @setup_if(%struct.port_if*, i8*, i32*, i32, i64) #1

declare dso_local i64 @str_is_ip6(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
