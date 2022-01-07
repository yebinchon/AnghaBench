; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_write_to_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_write_to_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i32, i64, i32, i64, i32, i32, i64, i64, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32* }

@APR_SUCCESS = common dso_local global i64 0, align 8
@SERF_CONN_CONNECTED = common dso_local global i64 0, align 8
@SERF_READ_ALL_AVAIL = common dso_local global i32 0, align 4
@IOV_MAX = common dso_local global i32 0, align 4
@SERF_ERROR_WAIT_CONN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*)* @write_to_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_to_connection(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 11
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %30, i64* %2, align 8
  br label %302

31:                                               ; preds = %15, %1
  br label %32

32:                                               ; preds = %31, %301
  store i32 0, i32* %5, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SERF_CONN_CONNECTED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %48, %52
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp sge i64 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %58, i64* %2, align 8
  br label %302

59:                                               ; preds = %45, %42
  br label %60

60:                                               ; preds = %93, %59
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %60
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = call i64 @socket_writev(%struct.TYPE_14__* %66)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @APR_STATUS_IS_EAGAIN(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %72, i64* %2, align 8
  br label %302

73:                                               ; preds = %65
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @APR_STATUS_IS_EPIPE(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @APR_STATUS_IS_ECONNRESET(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %6, align 8
  %83 = call i64 @APR_STATUS_IS_ECONNABORTED(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81, %77, %73
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = call i64 @no_more_writes(%struct.TYPE_14__* %86)
  store i64 %87, i64* %2, align 8
  br label %302

88:                                               ; preds = %81
  %89 = load i64, i64* %6, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i64, i64* %6, align 8
  store i64 %92, i64* %2, align 8
  br label %302

93:                                               ; preds = %88
  br label %60

94:                                               ; preds = %60
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = call i32 @request_or_data_pending(%struct.TYPE_13__** %4, %struct.TYPE_14__* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  store i32 1, i32* %100, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 11
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  %105 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %105, i64* %2, align 8
  br label %302

106:                                              ; preds = %94
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 13
  %110 = call i64 @prepare_conn_streams(%struct.TYPE_14__* %107, i32* %109, i32** %8, i32** %9)
  store i64 %110, i64* %6, align 8
  %111 = load i64, i64* %6, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i64, i64* %6, align 8
  store i64 %114, i64* %2, align 8
  br label %302

115:                                              ; preds = %106
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %117 = icmp ne %struct.TYPE_13__* %116, null
  br i1 %117, label %118, label %145

118:                                              ; preds = %115
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %125 = call i64 @setup_request(%struct.TYPE_13__* %124)
  store i64 %125, i64* %7, align 8
  %126 = load i64, i64* %7, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i64, i64* %7, align 8
  store i64 %129, i64* %2, align 8
  br label %302

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %118
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @serf_bucket_aggregate_append(i32* %139, i32* %142)
  br label %144

144:                                              ; preds = %136, %131
  br label %145

145:                                              ; preds = %144, %115
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* @SERF_READ_ALL_AVAIL, align 4
  %148 = load i32, i32* @IOV_MAX, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 12
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 6
  %154 = call i64 @serf_bucket_read_iovec(i32* %146, i32 %147, i32 %148, i32 %151, i64* %153)
  store i64 %154, i64* %7, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 10
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %189, label %159

159:                                              ; preds = %145
  %160 = load i64, i64* %7, align 8
  %161 = call i64 @APR_STATUS_IS_EAGAIN(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 1, i32* %5, align 4
  br label %188

164:                                              ; preds = %159
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* @SERF_ERROR_WAIT_CONN, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 7
  store i32 1, i32* %170, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  store i32 1, i32* %172, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 11
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  store i32 1, i32* %176, align 4
  br label %187

177:                                              ; preds = %164
  %178 = load i64, i64* %7, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = load i64, i64* %7, align 8
  %182 = call i32 @APR_STATUS_IS_EOF(i64 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = load i64, i64* %7, align 8
  store i64 %185, i64* %2, align 8
  br label %302

186:                                              ; preds = %180, %177
  br label %187

187:                                              ; preds = %186, %168
  br label %188

188:                                              ; preds = %187, %163
  br label %189

189:                                              ; preds = %188, %145
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %226

194:                                              ; preds = %189
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %196 = call i64 @socket_writev(%struct.TYPE_14__* %195)
  store i64 %196, i64* %6, align 8
  %197 = load i64, i64* %6, align 8
  %198 = call i64 @APR_STATUS_IS_EAGAIN(i64 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %201, i64* %2, align 8
  br label %302

202:                                              ; preds = %194
  %203 = load i64, i64* %6, align 8
  %204 = call i64 @APR_STATUS_IS_EPIPE(i64 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %208 = call i64 @no_more_writes(%struct.TYPE_14__* %207)
  store i64 %208, i64* %2, align 8
  br label %302

209:                                              ; preds = %202
  %210 = load i64, i64* %6, align 8
  %211 = call i64 @APR_STATUS_IS_ECONNRESET(i64 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i64, i64* %6, align 8
  %215 = call i64 @APR_STATUS_IS_ECONNABORTED(i64 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %213, %209
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %219 = call i64 @no_more_writes(%struct.TYPE_14__* %218)
  store i64 %219, i64* %2, align 8
  br label %302

220:                                              ; preds = %213
  %221 = load i64, i64* %6, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i64, i64* %6, align 8
  store i64 %224, i64* %2, align 8
  br label %302

225:                                              ; preds = %220
  br label %226

226:                                              ; preds = %225, %189
  %227 = load i64, i64* %7, align 8
  %228 = load i64, i64* @SERF_ERROR_WAIT_CONN, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %239

230:                                              ; preds = %226
  store i32 1, i32* %5, align 4
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 7
  store i32 1, i32* %232, align 8
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 2
  store i32 1, i32* %234, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 11
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  store i32 1, i32* %238, align 4
  br label %296

239:                                              ; preds = %226
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %241 = icmp ne %struct.TYPE_13__* %240, null
  br i1 %241, label %242, label %295

242:                                              ; preds = %239
  %243 = load i64, i64* %7, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %295

245:                                              ; preds = %242
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 10
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %295

250:                                              ; preds = %245
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 6
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %295

255:                                              ; preds = %250
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 10
  store i64 0, i64* %257, align 8
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  %261 = call i32 @serf_bucket_destroy(i32* %260)
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 2
  store i32* null, i32** %263, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 9
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %255
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 8
  store i32 %271, i32* %273, align 4
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %275 = call i32 @destroy_request(%struct.TYPE_13__* %274)
  br label %276

276:                                              ; preds = %268, %255
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %279, 1
  store i64 %280, i64* %278, align 8
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %294

285:                                              ; preds = %276
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp sgt i64 %288, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %285
  store i32 1, i32* %5, align 4
  br label %294

294:                                              ; preds = %293, %285, %276
  br label %295

295:                                              ; preds = %294, %250, %245, %242, %239
  br label %296

296:                                              ; preds = %295, %230
  %297 = load i32, i32* %5, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %296
  %300 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %300, i64* %2, align 8
  br label %302

301:                                              ; preds = %296
  br label %32

302:                                              ; preds = %299, %223, %217, %206, %200, %184, %128, %113, %98, %91, %85, %71, %57, %23
  %303 = load i64, i64* %2, align 8
  ret i64 %303
}

declare dso_local i64 @socket_writev(%struct.TYPE_14__*) #1

declare dso_local i64 @APR_STATUS_IS_EAGAIN(i64) #1

declare dso_local i64 @APR_STATUS_IS_EPIPE(i64) #1

declare dso_local i64 @APR_STATUS_IS_ECONNRESET(i64) #1

declare dso_local i64 @APR_STATUS_IS_ECONNABORTED(i64) #1

declare dso_local i64 @no_more_writes(%struct.TYPE_14__*) #1

declare dso_local i32 @request_or_data_pending(%struct.TYPE_13__**, %struct.TYPE_14__*) #1

declare dso_local i64 @prepare_conn_streams(%struct.TYPE_14__*, i32*, i32**, i32**) #1

declare dso_local i64 @setup_request(%struct.TYPE_13__*) #1

declare dso_local i32 @serf_bucket_aggregate_append(i32*, i32*) #1

declare dso_local i64 @serf_bucket_read_iovec(i32*, i32, i32, i32, i64*) #1

declare dso_local i32 @APR_STATUS_IS_EOF(i64) #1

declare dso_local i32 @serf_bucket_destroy(i32*) #1

declare dso_local i32 @destroy_request(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
