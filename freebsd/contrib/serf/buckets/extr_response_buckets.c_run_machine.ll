; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_response_buckets.c_run_machine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_response_buckets.c_run_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__, i8*, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@APR_SUCCESS = common dso_local global i32 0, align 4
@SERF_NEWLINE_ANY = common dso_local global i32 0, align 4
@SERF_LINEBUF_READY = common dso_local global i32 0, align 4
@SERF_ERROR_REQUEST_LOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Content-Encoding\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@SERF_DEFLATE_GZIP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@SERF_DEFLATE_DEFLATE = common dso_local global i32 0, align 4
@APR_EOF = common dso_local global i32 0, align 4
@APR_EGENERAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)* @run_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_machine(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %9 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %242 [
    i32 129, label %13
    i32 130, label %68
    i32 132, label %212
    i32 128, label %213
    i32 131, label %240
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = load i32, i32* @SERF_NEWLINE_ANY, align 4
  %16 = call i32 @fetch_line(%struct.TYPE_15__* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @SERF_BUCKET_READ_ERROR(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %246

22:                                               ; preds = %13
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SERF_LINEBUF_READY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %22
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @parse_status_line(%struct.TYPE_15__* %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %246

39:                                               ; preds = %29
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 101
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @serf_bucket_barrier_create(i32 %48, i32 %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  store i32 131, i32* %56, align 8
  br label %244

57:                                               ; preds = %39
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  store i32 130, i32* %59, align 8
  br label %67

60:                                               ; preds = %22
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @APR_STATUS_IS_EOF(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @SERF_ERROR_REQUEST_LOST, align 4
  store i32 %65, i32* %3, align 4
  br label %246

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %57
  br label %244

68:                                               ; preds = %2
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = call i32 @fetch_headers(%struct.TYPE_14__* %69, %struct.TYPE_15__* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @SERF_BUCKET_READ_ERROR(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %246

77:                                               ; preds = %68
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SERF_LINEBUF_READY, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %211

84:                                               ; preds = %77
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %211, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store i32 132, i32* %92, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = call i32 @expect_body(%struct.TYPE_15__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @serf_bucket_simple_create(i32* null, i32 0, i32* null, i32* null, i32 %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  store i32 132, i32* %104, align 8
  br label %244

105:                                              ; preds = %90
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @serf_bucket_barrier_create(i32 %108, i32 %111)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @serf_bucket_headers_get(i32 %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %118, i8** %7, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %141

121:                                              ; preds = %105
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @apr_strtoi64(i8* %122, i32* null, i32 10)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* @errno, align 4
  %125 = load i32, i32* @ERANGE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @ERANGE, align 4
  %129 = call i32 @APR_FROM_OS_ERROR(i32 %128)
  store i32 %129, i32* %3, align 4
  br label %246

130:                                              ; preds = %121
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @serf_bucket_response_body_create(i8* %133, i32 %134, i32 %137)
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  br label %165

141:                                              ; preds = %105
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @serf_bucket_headers_get(i32 %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %145, i8** %7, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %164

148:                                              ; preds = %141
  %149 = load i8*, i8** %7, align 8
  %150 = call i32 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %149)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 3
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @serf_bucket_dechunk_create(i8* %157, i32 %160)
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 3
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %152, %148, %141
  br label %165

165:                                              ; preds = %164, %130
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @serf_bucket_headers_get(i32 %168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i8* %169, i8** %7, align 8
  %170 = load i8*, i8** %7, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %210

172:                                              ; preds = %165
  %173 = load i8*, i8** %7, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %190

175:                                              ; preds = %172
  %176 = load i8*, i8** %7, align 8
  %177 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %176)
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %175
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @SERF_DEFLATE_GZIP, align 4
  %187 = call i8* @serf_bucket_deflate_create(i8* %182, i32 %185, i32 %186)
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 3
  store i8* %187, i8** %189, align 8
  br label %209

190:                                              ; preds = %175, %172
  %191 = load i8*, i8** %7, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %208

193:                                              ; preds = %190
  %194 = load i8*, i8** %7, align 8
  %195 = call i32 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %194)
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %193
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @SERF_DEFLATE_DEFLATE, align 4
  %205 = call i8* @serf_bucket_deflate_create(i8* %200, i32 %203, i32 %204)
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %197, %193, %190
  br label %209

209:                                              ; preds = %208, %179
  br label %210

210:                                              ; preds = %209, %165
  br label %211

211:                                              ; preds = %210, %84, %77
  br label %244

212:                                              ; preds = %2
  br label %244

213:                                              ; preds = %2
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %216 = call i32 @fetch_headers(%struct.TYPE_14__* %214, %struct.TYPE_15__* %215)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @SERF_BUCKET_READ_ERROR(i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = load i32, i32* %6, align 4
  store i32 %221, i32* %3, align 4
  br label %246

222:                                              ; preds = %213
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @SERF_LINEBUF_READY, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %239

229:                                              ; preds = %222
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %229
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  store i32 131, i32* %237, align 8
  %238 = load i32, i32* @APR_EOF, align 4
  store i32 %238, i32* %3, align 4
  br label %246

239:                                              ; preds = %229, %222
  br label %244

240:                                              ; preds = %2
  %241 = load i32, i32* @APR_EOF, align 4
  store i32 %241, i32* %3, align 4
  br label %246

242:                                              ; preds = %2
  %243 = load i32, i32* @APR_EGENERAL, align 4
  store i32 %243, i32* %3, align 4
  br label %246

244:                                              ; preds = %239, %212, %211, %96, %67, %45
  %245 = load i32, i32* %6, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %244, %242, %240, %235, %220, %127, %75, %64, %37, %20
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i32 @fetch_line(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @SERF_BUCKET_READ_ERROR(i32) #1

declare dso_local i32 @parse_status_line(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @serf_bucket_barrier_create(i32, i32) #1

declare dso_local i32 @APR_STATUS_IS_EOF(i32) #1

declare dso_local i32 @fetch_headers(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @expect_body(%struct.TYPE_15__*) #1

declare dso_local i8* @serf_bucket_simple_create(i32*, i32, i32*, i32*, i32) #1

declare dso_local i8* @serf_bucket_headers_get(i32, i8*) #1

declare dso_local i32 @apr_strtoi64(i8*, i32*, i32) #1

declare dso_local i32 @APR_FROM_OS_ERROR(i32) #1

declare dso_local i8* @serf_bucket_response_body_create(i8*, i32, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @serf_bucket_dechunk_create(i8*, i32) #1

declare dso_local i8* @serf_bucket_deflate_create(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
