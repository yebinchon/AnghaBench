; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_do_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_do_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32, i64, %struct.TYPE_18__*, i32, i32*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.rdma_conn_param = type { i32, i32, i32, i32, i32, i8* }
%struct.rs_conn_private_data = type { i32 }
%struct.rs_conn_data = type { i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@RS_CONN_RETRIES = common dso_local global i32 0, align 4
@RDMA_OPTION_IB = common dso_local global i32 0, align 4
@RDMA_OPTION_IB_PATH = common dso_local global i32 0, align 4
@RS_OPT_MSG_SEND = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@rs_connect_rdwr = common dso_local global i8* null, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i64 0, align 8
@rs_connect_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*)* @rs_do_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_do_connect(%struct.rsocket* %0) #0 {
  %2 = alloca %struct.rsocket*, align 8
  %3 = alloca %struct.rdma_conn_param, align 8
  %4 = alloca %struct.rs_conn_private_data, align 4
  %5 = alloca %struct.rs_conn_data*, align 8
  %6 = alloca %struct.rs_conn_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %2, align 8
  %9 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %10 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %274 [
    i32 130, label %12
    i32 132, label %12
    i32 129, label %45
    i32 128, label %124
    i32 131, label %209
    i32 133, label %244
  ]

12:                                               ; preds = %1, %1
  br label %13

13:                                               ; preds = %62, %12
  %14 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %15 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = shl i32 1000, %16
  store i32 %18, i32* %7, align 4
  %19 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %20 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %19, i32 0, i32 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %23 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %22, i32 0, i32 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @rdma_resolve_addr(%struct.TYPE_18__* %21, i32* null, i32* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %13
  br label %67

33:                                               ; preds = %13
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EAGAIN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EWOULDBLOCK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33
  %42 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %43 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %42, i32 0, i32 0
  store i32 129, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %37
  br label %277

45:                                               ; preds = %1
  %46 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %47 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %46, i32 0, i32 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = call i32 @ucma_complete(%struct.TYPE_18__* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @ETIMEDOUT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %58 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RS_CONN_RETRIES, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %13

63:                                               ; preds = %56, %52
  br label %277

64:                                               ; preds = %45
  %65 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %66 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %65, i32 0, i32 5
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %142, %64, %32
  %68 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %69 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = shl i32 1000, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %74 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %102

77:                                               ; preds = %67
  %78 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %79 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %78, i32 0, i32 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = load i32, i32* @RDMA_OPTION_IB, align 4
  %82 = load i32, i32* @RDMA_OPTION_IB_PATH, align 4
  %83 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %84 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %87 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @rdma_set_option(%struct.TYPE_18__* %80, i32 %81, i32 %82, i32* %85, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %91 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @free(i32* %92)
  %94 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %95 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %94, i32 0, i32 6
  store i32* null, i32** %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %77
  %99 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %100 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %99, i32 0, i32 0
  store i32 128, i32* %100, align 8
  br label %125

101:                                              ; preds = %77
  br label %112

102:                                              ; preds = %67
  %103 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %104 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %103, i32 0, i32 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @rdma_resolve_route(%struct.TYPE_18__* %105, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  br label %145

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %101
  %113 = load i64, i64* @errno, align 8
  %114 = load i64, i64* @EAGAIN, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* @errno, align 8
  %118 = load i64, i64* @EWOULDBLOCK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116, %112
  %121 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %122 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %121, i32 0, i32 0
  store i32 128, i32* %122, align 8
  br label %123

123:                                              ; preds = %120, %116
  br label %277

124:                                              ; preds = %1
  br label %125

125:                                              ; preds = %124, %98
  %126 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %127 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %126, i32 0, i32 4
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = call i32 @ucma_complete(%struct.TYPE_18__* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %125
  %133 = load i64, i64* @errno, align 8
  %134 = load i64, i64* @ETIMEDOUT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %138 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @RS_CONN_RETRIES, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %67

143:                                              ; preds = %136, %132
  br label %277

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %144, %110
  %146 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %147 = call i32 @rs_create_ep(%struct.rsocket* %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %277

151:                                              ; preds = %145
  %152 = call i32 @memset(%struct.rdma_conn_param* %3, i32 0, i32 32)
  %153 = bitcast %struct.rs_conn_private_data* %4 to i8*
  %154 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %155 = call i32 @rs_conn_data_offset(%struct.rsocket* %154)
  %156 = sext i32 %155 to i64
  %157 = getelementptr i8, i8* %153, i64 %156
  %158 = bitcast i8* %157 to %struct.rs_conn_data*
  store %struct.rs_conn_data* %158, %struct.rs_conn_data** %5, align 8
  %159 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %160 = load %struct.rs_conn_data*, %struct.rs_conn_data** %5, align 8
  %161 = call i32 @rs_format_conn_data(%struct.rsocket* %159, %struct.rs_conn_data* %160)
  %162 = load %struct.rs_conn_data*, %struct.rs_conn_data** %5, align 8
  %163 = bitcast %struct.rs_conn_data* %162 to i8*
  %164 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %165 = call i32 @rs_conn_data_offset(%struct.rsocket* %164)
  %166 = sext i32 %165 to i64
  %167 = sub i64 0, %166
  %168 = getelementptr i8, i8* %163, i64 %167
  %169 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 5
  store i8* %168, i8** %169, align 8
  %170 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %171 = call i32 @rs_conn_data_offset(%struct.rsocket* %170)
  %172 = sext i32 %171 to i64
  %173 = add i64 4, %172
  %174 = trunc i64 %173 to i32
  %175 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 4
  store i32 %174, i32* %175, align 8
  %176 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 0
  store i32 1, i32* %176, align 8
  %177 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 1
  store i32 7, i32* %177, align 4
  %178 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 2
  store i32 7, i32* %178, align 8
  %179 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %180 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @RS_OPT_MSG_SEND, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %151
  %186 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 3
  store i32 1, i32* %186, align 4
  br label %187

187:                                              ; preds = %185, %151
  %188 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %189 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %188, i32 0, i32 5
  store i32 0, i32* %189, align 8
  %190 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %191 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %190, i32 0, i32 4
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = call i32 @rdma_connect(%struct.TYPE_18__* %192, %struct.rdma_conn_param* %3)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %187
  br label %218

197:                                              ; preds = %187
  %198 = load i64, i64* @errno, align 8
  %199 = load i64, i64* @EAGAIN, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %205, label %201

201:                                              ; preds = %197
  %202 = load i64, i64* @errno, align 8
  %203 = load i64, i64* @EWOULDBLOCK, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201, %197
  %206 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %207 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %206, i32 0, i32 0
  store i32 131, i32* %207, align 8
  br label %208

208:                                              ; preds = %205, %201
  br label %277

209:                                              ; preds = %1
  %210 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %211 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %210, i32 0, i32 4
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %211, align 8
  %213 = call i32 @ucma_complete(%struct.TYPE_18__* %212)
  store i32 %213, i32* %8, align 4
  %214 = load i32, i32* %8, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  br label %277

217:                                              ; preds = %209
  br label %218

218:                                              ; preds = %217, %196
  %219 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %220 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %219, i32 0, i32 4
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = inttoptr i64 %227 to %struct.rs_conn_data*
  store %struct.rs_conn_data* %228, %struct.rs_conn_data** %6, align 8
  %229 = load %struct.rs_conn_data*, %struct.rs_conn_data** %6, align 8
  %230 = getelementptr inbounds %struct.rs_conn_data, %struct.rs_conn_data* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 1
  br i1 %232, label %233, label %236

233:                                              ; preds = %218
  %234 = load i32, i32* @ENOTSUP, align 4
  %235 = call i32 @ERR(i32 %234)
  store i32 %235, i32* %8, align 4
  br label %277

236:                                              ; preds = %218
  %237 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %238 = load %struct.rs_conn_data*, %struct.rs_conn_data** %6, align 8
  %239 = call i32 @rs_save_conn_data(%struct.rsocket* %237, %struct.rs_conn_data* %238)
  %240 = load i8*, i8** @rs_connect_rdwr, align 8
  %241 = ptrtoint i8* %240 to i32
  %242 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %243 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  br label %277

244:                                              ; preds = %1
  %245 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %246 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @O_NONBLOCK, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %244
  %252 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %253 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %252, i32 0, i32 4
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @F_SETFL, align 4
  %260 = call i32 @fcntl(i32 %258, i32 %259, i32 0)
  br label %261

261:                                              ; preds = %251, %244
  %262 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %263 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %262, i32 0, i32 4
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %263, align 8
  %265 = call i32 @ucma_complete(%struct.TYPE_18__* %264)
  store i32 %265, i32* %8, align 4
  %266 = load i32, i32* %8, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %261
  br label %277

269:                                              ; preds = %261
  %270 = load i8*, i8** @rs_connect_rdwr, align 8
  %271 = ptrtoint i8* %270 to i32
  %272 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %273 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  br label %277

274:                                              ; preds = %1
  %275 = load i32, i32* @EINVAL, align 4
  %276 = call i32 @ERR(i32 %275)
  store i32 %276, i32* %8, align 4
  br label %277

277:                                              ; preds = %274, %269, %268, %236, %233, %216, %208, %150, %143, %123, %63, %44
  %278 = load i32, i32* %8, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %298

280:                                              ; preds = %277
  %281 = load i64, i64* @errno, align 8
  %282 = load i64, i64* @EAGAIN, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %288, label %284

284:                                              ; preds = %280
  %285 = load i64, i64* @errno, align 8
  %286 = load i64, i64* @EWOULDBLOCK, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %284, %280
  %289 = load i64, i64* @EINPROGRESS, align 8
  store i64 %289, i64* @errno, align 8
  br label %297

290:                                              ; preds = %284
  %291 = load i32, i32* @rs_connect_error, align 4
  %292 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %293 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 8
  %294 = load i64, i64* @errno, align 8
  %295 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %296 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %295, i32 0, i32 3
  store i64 %294, i64* %296, align 8
  br label %297

297:                                              ; preds = %290, %288
  br label %298

298:                                              ; preds = %297, %277
  %299 = load i32, i32* %8, align 4
  ret i32 %299
}

declare dso_local i32 @rdma_resolve_addr(%struct.TYPE_18__*, i32*, i32*, i32) #1

declare dso_local i32 @ucma_complete(%struct.TYPE_18__*) #1

declare dso_local i32 @rdma_set_option(%struct.TYPE_18__*, i32, i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @rdma_resolve_route(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @rs_create_ep(%struct.rsocket*) #1

declare dso_local i32 @memset(%struct.rdma_conn_param*, i32, i32) #1

declare dso_local i32 @rs_conn_data_offset(%struct.rsocket*) #1

declare dso_local i32 @rs_format_conn_data(%struct.rsocket*, %struct.rs_conn_data*) #1

declare dso_local i32 @rdma_connect(%struct.TYPE_18__*, %struct.rdma_conn_param*) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rs_save_conn_data(%struct.rsocket*, %struct.rs_conn_data*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
