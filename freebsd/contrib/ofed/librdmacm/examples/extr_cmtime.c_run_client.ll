; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_run_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_run_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_8__ = type { i32, i32, i8* }

@src_addr = common dso_local global i64 0, align 8
@dst_addr = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@hints = common dso_local global i32 0, align 4
@rai = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"getaddrinfo error: %s\0A\00", align 1
@conn_param = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@retries = common dso_local global i8* null, align 8
@process_events = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failure creating event thread\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"binding source address\0A\00", align 1
@STEP_BIND = common dso_local global i64 0, align 8
@connections = common dso_local global i32 0, align 4
@nodes = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"failure bind addr\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"resolving address\0A\00", align 1
@STEP_RESOLVE_ADDR = common dso_local global i64 0, align 8
@timeout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"failure getting addr\00", align 1
@started = common dso_local global i64* null, align 8
@completed = common dso_local global i64* null, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"resolving route\0A\00", align 1
@STEP_RESOLVE_ROUTE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"failure resolving route\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"creating qp\0A\00", align 1
@STEP_CREATE_QP = common dso_local global i64 0, align 8
@init_qp_attr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"failure creating qp\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"connecting\0A\00", align 1
@STEP_CONNECT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"failure rconnecting\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"disconnecting\0A\00", align 1
@STEP_DISCONNECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_client() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @src_addr, align 8
  %6 = load i32, i32* @dst_addr, align 4
  %7 = load i32, i32* @port, align 4
  %8 = call i32 @get_rdma_addr(i64 %5, i32 %6, i32 %7, i32* @hints, %struct.TYPE_10__** @rai)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @gai_strerror(i32 %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %1, align 4
  br label %401

16:                                               ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conn_param, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conn_param, i32 0, i32 1), align 4
  %17 = load i8*, i8** @retries, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conn_param, i32 0, i32 4), align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rai, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conn_param, i32 0, i32 3), align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rai, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conn_param, i32 0, i32 2), align 8
  %24 = load i32, i32* @process_events, align 4
  %25 = call i32 @pthread_create(i32* %2, i32* null, i32 %24, i32* null)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %1, align 4
  br label %401

31:                                               ; preds = %16
  %32 = load i64, i64* @src_addr, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i64, i64* @STEP_BIND, align 8
  %37 = call i32 @start_time(i64 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %75, %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @connections, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %78

42:                                               ; preds = %38
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = load i64, i64* @STEP_BIND, align 8
  %48 = call i32 @start_perf(%struct.TYPE_8__* %46, i64 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rai, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rdma_bind_addr(i32 %54, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %42
  %62 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %75

68:                                               ; preds = %42
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  %73 = load i64, i64* @STEP_BIND, align 8
  %74 = call i32 @end_perf(%struct.TYPE_8__* %72, i64 %73)
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %38

78:                                               ; preds = %38
  %79 = load i64, i64* @STEP_BIND, align 8
  %80 = call i32 @end_time(i64 %79)
  br label %81

81:                                               ; preds = %78, %31
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i64, i64* @STEP_RESOLVE_ADDR, align 8
  %84 = call i32 @start_time(i64 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %140, %81
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @connections, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %143

89:                                               ; preds = %85
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %140

98:                                               ; preds = %89
  %99 = load i8*, i8** @retries, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i8* %99, i8** %104, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %107
  %109 = load i64, i64* @STEP_RESOLVE_ADDR, align 8
  %110 = call i32 @start_perf(%struct.TYPE_8__* %108, i64 %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rai, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rai, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @timeout, align 4
  %124 = call i32 @rdma_resolve_addr(i32 %116, i32 %119, i32 %122, i32 %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %98
  %128 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  br label %140

134:                                              ; preds = %98
  %135 = load i64*, i64** @started, align 8
  %136 = load i64, i64* @STEP_RESOLVE_ADDR, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %137, align 8
  br label %140

140:                                              ; preds = %134, %127, %97
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %85

143:                                              ; preds = %85
  br label %144

144:                                              ; preds = %154, %143
  %145 = load i64*, i64** @started, align 8
  %146 = load i64, i64* @STEP_RESOLVE_ADDR, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** @completed, align 8
  %150 = load i64, i64* @STEP_RESOLVE_ADDR, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %148, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = call i32 (...) @sched_yield()
  br label %144

156:                                              ; preds = %144
  %157 = load i64, i64* @STEP_RESOLVE_ADDR, align 8
  %158 = call i32 @end_time(i64 %157)
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %160 = load i64, i64* @STEP_RESOLVE_ROUTE, align 8
  %161 = call i32 @start_time(i64 %160)
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %211, %156
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* @connections, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %214

166:                                              ; preds = %162
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  br label %211

175:                                              ; preds = %166
  %176 = load i8*, i8** @retries, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  store i8* %176, i8** %181, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %183 = load i32, i32* %3, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %184
  %186 = load i64, i64* @STEP_RESOLVE_ROUTE, align 8
  %187 = call i32 @start_perf(%struct.TYPE_8__* %185, i64 %186)
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @timeout, align 4
  %195 = call i32 @rdma_resolve_route(i32 %193, i32 %194)
  store i32 %195, i32* %4, align 4
  %196 = load i32, i32* %4, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %175
  %199 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  br label %211

205:                                              ; preds = %175
  %206 = load i64*, i64** @started, align 8
  %207 = load i64, i64* @STEP_RESOLVE_ROUTE, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, 1
  store i64 %210, i64* %208, align 8
  br label %211

211:                                              ; preds = %205, %198, %174
  %212 = load i32, i32* %3, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %3, align 4
  br label %162

214:                                              ; preds = %162
  br label %215

215:                                              ; preds = %225, %214
  %216 = load i64*, i64** @started, align 8
  %217 = load i64, i64* @STEP_RESOLVE_ROUTE, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = load i64*, i64** @completed, align 8
  %221 = load i64, i64* @STEP_RESOLVE_ROUTE, align 8
  %222 = getelementptr inbounds i64, i64* %220, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %219, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %215
  %226 = call i32 (...) @sched_yield()
  br label %215

227:                                              ; preds = %215
  %228 = load i64, i64* @STEP_RESOLVE_ROUTE, align 8
  %229 = call i32 @end_time(i64 %228)
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %231 = load i64, i64* @STEP_CREATE_QP, align 8
  %232 = call i32 @start_time(i64 %231)
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %276, %227
  %234 = load i32, i32* %3, align 4
  %235 = load i32, i32* @connections, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %279

237:                                              ; preds = %233
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %237
  br label %276

246:                                              ; preds = %237
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %248 = load i32, i32* %3, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i64 %249
  %251 = load i64, i64* @STEP_CREATE_QP, align 8
  %252 = call i32 @start_perf(%struct.TYPE_8__* %250, i64 %251)
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @rdma_create_qp(i32 %258, i32* null, i32* @init_qp_attr)
  store i32 %259, i32* %4, align 4
  %260 = load i32, i32* %4, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %246
  %263 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %265 = load i32, i32* %3, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  store i32 1, i32* %268, align 8
  br label %276

269:                                              ; preds = %246
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %271 = load i32, i32* %3, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i64 %272
  %274 = load i64, i64* @STEP_CREATE_QP, align 8
  %275 = call i32 @end_perf(%struct.TYPE_8__* %273, i64 %274)
  br label %276

276:                                              ; preds = %269, %262, %245
  %277 = load i32, i32* %3, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %3, align 4
  br label %233

279:                                              ; preds = %233
  %280 = load i64, i64* @STEP_CREATE_QP, align 8
  %281 = call i32 @end_time(i64 %280)
  %282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %283 = load i64, i64* @STEP_CONNECT, align 8
  %284 = call i32 @start_time(i64 %283)
  store i32 0, i32* %3, align 4
  br label %285

285:                                              ; preds = %327, %279
  %286 = load i32, i32* %3, align 4
  %287 = load i32, i32* @connections, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %330

289:                                              ; preds = %285
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %291 = load i32, i32* %3, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %289
  br label %327

298:                                              ; preds = %289
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %300 = load i32, i32* %3, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i64 %301
  %303 = load i64, i64* @STEP_CONNECT, align 8
  %304 = call i32 @start_perf(%struct.TYPE_8__* %302, i64 %303)
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %306 = load i32, i32* %3, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @rdma_connect(i32 %310, %struct.TYPE_9__* @conn_param)
  store i32 %311, i32* %4, align 4
  %312 = load i32, i32* %4, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %298
  %315 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %317 = load i32, i32* %3, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  store i32 1, i32* %320, align 8
  br label %327

321:                                              ; preds = %298
  %322 = load i64*, i64** @started, align 8
  %323 = load i64, i64* @STEP_CONNECT, align 8
  %324 = getelementptr inbounds i64, i64* %322, i64 %323
  %325 = load i64, i64* %324, align 8
  %326 = add nsw i64 %325, 1
  store i64 %326, i64* %324, align 8
  br label %327

327:                                              ; preds = %321, %314, %297
  %328 = load i32, i32* %3, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %3, align 4
  br label %285

330:                                              ; preds = %285
  br label %331

331:                                              ; preds = %341, %330
  %332 = load i64*, i64** @started, align 8
  %333 = load i64, i64* @STEP_CONNECT, align 8
  %334 = getelementptr inbounds i64, i64* %332, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = load i64*, i64** @completed, align 8
  %337 = load i64, i64* @STEP_CONNECT, align 8
  %338 = getelementptr inbounds i64, i64* %336, i64 %337
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %335, %339
  br i1 %340, label %341, label %343

341:                                              ; preds = %331
  %342 = call i32 (...) @sched_yield()
  br label %331

343:                                              ; preds = %331
  %344 = load i64, i64* @STEP_CONNECT, align 8
  %345 = call i32 @end_time(i64 %344)
  %346 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %347 = load i64, i64* @STEP_DISCONNECT, align 8
  %348 = call i32 @start_time(i64 %347)
  store i32 0, i32* %3, align 4
  br label %349

349:                                              ; preds = %381, %343
  %350 = load i32, i32* %3, align 4
  %351 = load i32, i32* @connections, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %384

353:                                              ; preds = %349
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %355 = load i32, i32* %3, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %353
  br label %381

362:                                              ; preds = %353
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %364 = load i32, i32* %3, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i64 %365
  %367 = load i64, i64* @STEP_DISCONNECT, align 8
  %368 = call i32 @start_perf(%struct.TYPE_8__* %366, i64 %367)
  %369 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %370 = load i32, i32* %3, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @rdma_disconnect(i32 %374)
  %376 = load i64*, i64** @started, align 8
  %377 = load i64, i64* @STEP_DISCONNECT, align 8
  %378 = getelementptr inbounds i64, i64* %376, i64 %377
  %379 = load i64, i64* %378, align 8
  %380 = add nsw i64 %379, 1
  store i64 %380, i64* %378, align 8
  br label %381

381:                                              ; preds = %362, %361
  %382 = load i32, i32* %3, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %3, align 4
  br label %349

384:                                              ; preds = %349
  br label %385

385:                                              ; preds = %395, %384
  %386 = load i64*, i64** @started, align 8
  %387 = load i64, i64* @STEP_DISCONNECT, align 8
  %388 = getelementptr inbounds i64, i64* %386, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = load i64*, i64** @completed, align 8
  %391 = load i64, i64* @STEP_DISCONNECT, align 8
  %392 = getelementptr inbounds i64, i64* %390, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %389, %393
  br i1 %394, label %395, label %397

395:                                              ; preds = %385
  %396 = call i32 (...) @sched_yield()
  br label %385

397:                                              ; preds = %385
  %398 = load i64, i64* @STEP_DISCONNECT, align 8
  %399 = call i32 @end_time(i64 %398)
  %400 = load i32, i32* %4, align 4
  store i32 %400, i32* %1, align 4
  br label %401

401:                                              ; preds = %397, %28, %11
  %402 = load i32, i32* %1, align 4
  ret i32 %402
}

declare dso_local i32 @get_rdma_addr(i64, i32, i32, i32*, %struct.TYPE_10__**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @gai_strerror(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @start_time(i64) #1

declare dso_local i32 @start_perf(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @rdma_bind_addr(i32, i32) #1

declare dso_local i32 @end_perf(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @end_time(i64) #1

declare dso_local i32 @rdma_resolve_addr(i32, i32, i32, i32) #1

declare dso_local i32 @sched_yield(...) #1

declare dso_local i32 @rdma_resolve_route(i32, i32) #1

declare dso_local i32 @rdma_create_qp(i32, i32*, i32*) #1

declare dso_local i32 @rdma_connect(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @rdma_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
