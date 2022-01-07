; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_read_from_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_read_from_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64, %struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i32, i64, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__*, i32*, i32, i32* (%struct.TYPE_14__*, i32, i32, i32*)*, i64 }

@FALSE = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@SERF_ERROR_REQUEST_LOST = common dso_local global i32 0, align 4
@SERF_ERROR_ABORTED_CONNECTION = common dso_local global i32 0, align 4
@SERF_ERROR_CLOSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @read_from_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_from_connection(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %6, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 9
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %19, %1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @apr_pool_create(i32** %4, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @APR_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %271

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %65, %185, %270
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @apr_pool_clear(i32* %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 6
  %43 = call i32 @prepare_conn_streams(%struct.TYPE_15__* %40, i32* %42, i32** %7, i32** %8)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %271

47:                                               ; preds = %37
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @handle_async_response(%struct.TYPE_15__* %53, i32* %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i64 @APR_STATUS_IS_EAGAIN(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %60, i32* %3, align 4
  br label %271

61:                                               ; preds = %52
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %271

65:                                               ; preds = %61
  br label %37

66:                                               ; preds = %47
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %108, label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @serf_bucket_peek(i32 %79, i8** %9, i32* %10)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i64 @APR_STATUS_IS_EOF(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = call i32 @reset_connection(%struct.TYPE_15__* %85, i32 1)
  %87 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %87, i32* %3, align 4
  br label %271

88:                                               ; preds = %76
  %89 = load i32, i32* %3, align 4
  %90 = call i64 @APR_STATUS_IS_EAGAIN(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %96, i32* %3, align 4
  br label %271

97:                                               ; preds = %92, %88
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = call i64 @APR_STATUS_IS_EAGAIN(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  br label %271

105:                                              ; preds = %100, %97
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107, %71
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %130

113:                                              ; preds = %108
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  %116 = load i32* (%struct.TYPE_14__*, i32, i32, i32*)*, i32* (%struct.TYPE_14__*, i32, i32, i32*)** %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %4, align 8
  %125 = call i32* %116(%struct.TYPE_14__* %117, i32 %120, i32 %123, i32* %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  store i32* %125, i32** %127, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @apr_pool_clear(i32* %128)
  br label %130

130:                                              ; preds = %113, %108
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @handle_response(%struct.TYPE_14__* %131, i32* %132)
  store i32 %133, i32* %3, align 4
  %134 = load i32, i32* %3, align 4
  %135 = call i64 @APR_STATUS_IS_ECONNRESET(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %3, align 4
  %139 = call i64 @APR_STATUS_IS_ECONNABORTED(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @SERF_ERROR_REQUEST_LOST, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %141, %137, %130
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %152 = call i32 @reset_connection(%struct.TYPE_15__* %151, i32 1)
  %153 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %153, i32* %3, align 4
  br label %161

154:                                              ; preds = %145
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* @SERF_ERROR_REQUEST_LOST, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* @SERF_ERROR_ABORTED_CONNECTION, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %154
  br label %161

161:                                              ; preds = %160, %150
  br label %271

162:                                              ; preds = %141
  %163 = load i32, i32* %3, align 4
  %164 = call i64 @APR_STATUS_IS_EAGAIN(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %182

166:                                              ; preds = %162
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %168 = call i64 @request_or_data_pending(%struct.TYPE_14__** %6, %struct.TYPE_15__* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %172 = icmp ne %struct.TYPE_14__* %171, null
  br i1 %172, label %180, label %173

173:                                              ; preds = %170
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  store i32 1, i32* %175, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  store i32 1, i32* %179, align 4
  br label %180

180:                                              ; preds = %173, %170, %166
  %181 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %181, i32* %3, align 4
  br label %271

182:                                              ; preds = %162
  %183 = load i32, i32* %3, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %182
  br label %37

186:                                              ; preds = %182
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @is_conn_closing(i32* %189)
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* %3, align 4
  %192 = call i64 @APR_STATUS_IS_EOF(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %186
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @SERF_ERROR_CLOSING, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  br label %271

199:                                              ; preds = %194, %186
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %201, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 5
  store %struct.TYPE_14__* %202, %struct.TYPE_14__** %204, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %206 = call i32 @destroy_request(%struct.TYPE_14__* %205)
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 5
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  store %struct.TYPE_14__* %209, %struct.TYPE_14__** %6, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %211 = icmp eq %struct.TYPE_14__* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %199
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 4
  store i32* null, i32** %214, align 8
  br label %215

215:                                              ; preds = %212, %199
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %217, align 8
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  store i32 1, i32* %221, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  store i32 1, i32* %225, align 4
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @SERF_ERROR_CLOSING, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %215
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %231 = call i32 @reset_connection(%struct.TYPE_15__* %230, i32 1)
  %232 = load i32, i32* %3, align 4
  %233 = call i64 @APR_STATUS_IS_EOF(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %229
  %236 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %236, i32* %3, align 4
  br label %237

237:                                              ; preds = %235, %229
  br label %271

238:                                              ; preds = %215
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %238
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp sgt i64 %246, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 2
  store i64 0, i64* %253, align 8
  br label %254

254:                                              ; preds = %251, %243, %238
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %256 = icmp eq %struct.TYPE_14__* %255, null
  br i1 %256, label %262, label %257

257:                                              ; preds = %254
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %270, label %262

262:                                              ; preds = %257, %254
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  store i32 1, i32* %264, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 3
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  store i32 1, i32* %268, align 4
  %269 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %269, i32* %3, align 4
  br label %271

270:                                              ; preds = %257
  br label %37

271:                                              ; preds = %262, %237, %198, %180, %161, %104, %95, %84, %64, %59, %46, %35
  %272 = load i32*, i32** %4, align 8
  %273 = call i32 @apr_pool_destroy(i32* %272)
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local i32 @apr_pool_create(i32**, i32) #1

declare dso_local i32 @apr_pool_clear(i32*) #1

declare dso_local i32 @prepare_conn_streams(%struct.TYPE_15__*, i32*, i32**, i32**) #1

declare dso_local i32 @handle_async_response(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EAGAIN(i32) #1

declare dso_local i32 @serf_bucket_peek(i32, i8**, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i32) #1

declare dso_local i32 @reset_connection(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @handle_response(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ECONNRESET(i32) #1

declare dso_local i64 @APR_STATUS_IS_ECONNABORTED(i32) #1

declare dso_local i64 @request_or_data_pending(%struct.TYPE_14__**, %struct.TYPE_15__*) #1

declare dso_local i32 @is_conn_closing(i32*) #1

declare dso_local i32 @destroy_request(%struct.TYPE_14__*) #1

declare dso_local i32 @apr_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
