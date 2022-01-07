; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rsend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rsend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, i32, i64, i64, i64, i8*, i32, %struct.ibv_sge*, %struct.TYPE_2__*, i64 }
%struct.ibv_sge = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@RS_OLAP_START_SIZE = common dso_local global i64 0, align 8
@idm = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@rs_opening = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@rs_conn_can_send = common dso_local global i32 0, align 4
@rs_writable = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@RS_MAX_TRANSFER = common dso_local global i64 0, align 8
@IBV_SEND_INLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsend(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rsocket*, align 8
  %11 = alloca %struct.ibv_sge, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* @RS_OLAP_START_SIZE, align 8
  store i64 %17, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.rsocket* @idm_at(i32* @idm, i32 %18)
  store %struct.rsocket* %19, %struct.rsocket** %10, align 8
  %20 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %21 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SOCK_DGRAM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %4
  %26 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %27 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %26, i32 0, i32 6
  %28 = call i32 @fastlock_acquire(i32* %27)
  %29 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @dsend(%struct.rsocket* %29, i8* %30, i64 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %35 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %34, i32 0, i32 6
  %36 = call i32 @fastlock_release(i32* %35)
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %5, align 4
  br label %330

38:                                               ; preds = %4
  %39 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %40 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @rs_opening, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %47 = call i32 @rs_do_connect(%struct.rsocket* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EINPROGRESS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* @EAGAIN, align 8
  store i64 %55, i64* @errno, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %5, align 4
  br label %330

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %38
  %60 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %61 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %60, i32 0, i32 6
  %62 = call i32 @fastlock_acquire(i32* %61)
  %63 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %64 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %63, i32 0, i32 9
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @rs_send_iomaps(%struct.rsocket* %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %310

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %302, %75
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %309

79:                                               ; preds = %76
  %80 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %81 = call i32 @rs_can_send(%struct.rsocket* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %104, label %83

83:                                               ; preds = %79
  %84 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %85 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @rs_nonblocking(%struct.rsocket* %85, i32 %86)
  %88 = load i32, i32* @rs_conn_can_send, align 4
  %89 = call i32 @rs_get_comp(%struct.rsocket* %84, i32 %87, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %309

93:                                               ; preds = %83
  %94 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %95 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @rs_writable, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* @ECONNRESET, align 4
  %102 = call i32 @ERR(i32 %101)
  store i32 %102, i32* %15, align 4
  br label %309

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %79
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i64, i64* %14, align 8
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* @RS_MAX_TRANSFER, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i64, i64* %14, align 8
  %115 = shl i64 %114, 1
  store i64 %115, i64* %14, align 8
  br label %116

116:                                              ; preds = %113, %108
  br label %119

117:                                              ; preds = %104
  %118 = load i64, i64* %12, align 8
  store i64 %118, i64* %13, align 8
  br label %119

119:                                              ; preds = %117, %116
  %120 = load i64, i64* %13, align 8
  %121 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %122 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ugt i64 %120, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %127 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %13, align 8
  br label %129

129:                                              ; preds = %125, %119
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %132 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %131, i32 0, i32 8
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %135 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ugt i64 %130, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %129
  %142 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %143 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %142, i32 0, i32 8
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %146 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %13, align 8
  br label %151

151:                                              ; preds = %141, %129
  %152 = load i64, i64* %13, align 8
  %153 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %154 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp ule i64 %152, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %151
  %158 = load i8*, i8** %7, align 8
  %159 = ptrtoint i8* %158 to i64
  %160 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %11, i32 0, i32 0
  store i64 %159, i64* %160, align 8
  %161 = load i64, i64* %13, align 8
  %162 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %11, i32 0, i32 1
  store i64 %161, i64* %162, align 8
  %163 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %11, i32 0, i32 2
  store i64 0, i64* %163, align 8
  %164 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %165 = load i64, i64* %13, align 8
  %166 = load i32, i32* @IBV_SEND_INLINE, align 4
  %167 = call i32 @rs_write_data(%struct.rsocket* %164, %struct.ibv_sge* %11, i32 1, i64 %165, i32 %166)
  store i32 %167, i32* %15, align 4
  br label %297

168:                                              ; preds = %151
  %169 = load i64, i64* %13, align 8
  %170 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %171 = call i64 @rs_sbuf_left(%struct.rsocket* %170)
  %172 = icmp ule i64 %169, %171
  br i1 %172, label %173, label %220

173:                                              ; preds = %168
  %174 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %175 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %174, i32 0, i32 7
  %176 = load %struct.ibv_sge*, %struct.ibv_sge** %175, align 8
  %177 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %176, i64 0
  %178 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = inttoptr i64 %179 to i8*
  %181 = load i8*, i8** %7, align 8
  %182 = load i64, i64* %13, align 8
  %183 = call i32 @memcpy(i8* %180, i8* %181, i64 %182)
  %184 = load i64, i64* %13, align 8
  %185 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %186 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %185, i32 0, i32 7
  %187 = load %struct.ibv_sge*, %struct.ibv_sge** %186, align 8
  %188 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %187, i64 0
  %189 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %188, i32 0, i32 1
  store i64 %184, i64* %189, align 8
  %190 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %191 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %192 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %191, i32 0, i32 7
  %193 = load %struct.ibv_sge*, %struct.ibv_sge** %192, align 8
  %194 = load i64, i64* %13, align 8
  %195 = call i32 @rs_write_data(%struct.rsocket* %190, %struct.ibv_sge* %193, i32 1, i64 %194, i32 0)
  store i32 %195, i32* %15, align 4
  %196 = load i64, i64* %13, align 8
  %197 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %198 = call i64 @rs_sbuf_left(%struct.rsocket* %197)
  %199 = icmp ult i64 %196, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %173
  %201 = load i64, i64* %13, align 8
  %202 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %203 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %202, i32 0, i32 7
  %204 = load %struct.ibv_sge*, %struct.ibv_sge** %203, align 8
  %205 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %204, i64 0
  %206 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add i64 %207, %201
  store i64 %208, i64* %206, align 8
  br label %219

209:                                              ; preds = %173
  %210 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %211 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %210, i32 0, i32 5
  %212 = load i8*, i8** %211, align 8
  %213 = ptrtoint i8* %212 to i64
  %214 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %215 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %214, i32 0, i32 7
  %216 = load %struct.ibv_sge*, %struct.ibv_sge** %215, align 8
  %217 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %216, i64 0
  %218 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %217, i32 0, i32 0
  store i64 %213, i64* %218, align 8
  br label %219

219:                                              ; preds = %209, %200
  br label %296

220:                                              ; preds = %168
  %221 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %222 = call i64 @rs_sbuf_left(%struct.rsocket* %221)
  %223 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %224 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %223, i32 0, i32 7
  %225 = load %struct.ibv_sge*, %struct.ibv_sge** %224, align 8
  %226 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %225, i64 0
  %227 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %226, i32 0, i32 1
  store i64 %222, i64* %227, align 8
  %228 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %229 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %228, i32 0, i32 7
  %230 = load %struct.ibv_sge*, %struct.ibv_sge** %229, align 8
  %231 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %230, i64 0
  %232 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = inttoptr i64 %233 to i8*
  %235 = load i8*, i8** %7, align 8
  %236 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %237 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %236, i32 0, i32 7
  %238 = load %struct.ibv_sge*, %struct.ibv_sge** %237, align 8
  %239 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %238, i64 0
  %240 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @memcpy(i8* %234, i8* %235, i64 %241)
  %243 = load i64, i64* %13, align 8
  %244 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %245 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %244, i32 0, i32 7
  %246 = load %struct.ibv_sge*, %struct.ibv_sge** %245, align 8
  %247 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %246, i64 0
  %248 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = sub i64 %243, %249
  %251 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %252 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %251, i32 0, i32 7
  %253 = load %struct.ibv_sge*, %struct.ibv_sge** %252, align 8
  %254 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %253, i64 1
  %255 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %254, i32 0, i32 1
  store i64 %250, i64* %255, align 8
  %256 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %257 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %256, i32 0, i32 5
  %258 = load i8*, i8** %257, align 8
  %259 = load i8*, i8** %7, align 8
  %260 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %261 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %260, i32 0, i32 7
  %262 = load %struct.ibv_sge*, %struct.ibv_sge** %261, align 8
  %263 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %262, i64 0
  %264 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr i8, i8* %259, i64 %265
  %267 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %268 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %267, i32 0, i32 7
  %269 = load %struct.ibv_sge*, %struct.ibv_sge** %268, align 8
  %270 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %269, i64 1
  %271 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @memcpy(i8* %258, i8* %266, i64 %272)
  %274 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %275 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %276 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %275, i32 0, i32 7
  %277 = load %struct.ibv_sge*, %struct.ibv_sge** %276, align 8
  %278 = load i64, i64* %13, align 8
  %279 = call i32 @rs_write_data(%struct.rsocket* %274, %struct.ibv_sge* %277, i32 2, i64 %278, i32 0)
  store i32 %279, i32* %15, align 4
  %280 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %281 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %280, i32 0, i32 5
  %282 = load i8*, i8** %281, align 8
  %283 = ptrtoint i8* %282 to i64
  %284 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %285 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %284, i32 0, i32 7
  %286 = load %struct.ibv_sge*, %struct.ibv_sge** %285, align 8
  %287 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %286, i64 1
  %288 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = add i64 %283, %289
  %291 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %292 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %291, i32 0, i32 7
  %293 = load %struct.ibv_sge*, %struct.ibv_sge** %292, align 8
  %294 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %293, i64 0
  %295 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %294, i32 0, i32 0
  store i64 %290, i64* %295, align 8
  br label %296

296:                                              ; preds = %220, %219
  br label %297

297:                                              ; preds = %296, %157
  %298 = load i32, i32* %15, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  br label %309

301:                                              ; preds = %297
  br label %302

302:                                              ; preds = %301
  %303 = load i64, i64* %13, align 8
  %304 = load i64, i64* %12, align 8
  %305 = sub i64 %304, %303
  store i64 %305, i64* %12, align 8
  %306 = load i64, i64* %13, align 8
  %307 = load i8*, i8** %7, align 8
  %308 = getelementptr i8, i8* %307, i64 %306
  store i8* %308, i8** %7, align 8
  br label %76

309:                                              ; preds = %300, %100, %92, %76
  br label %310

310:                                              ; preds = %309, %73
  %311 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %312 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %311, i32 0, i32 6
  %313 = call i32 @fastlock_release(i32* %312)
  %314 = load i32, i32* %15, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %310
  %317 = load i64, i64* %12, align 8
  %318 = load i64, i64* %8, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %316
  %321 = load i32, i32* %15, align 4
  %322 = sext i32 %321 to i64
  br label %327

323:                                              ; preds = %316, %310
  %324 = load i64, i64* %8, align 8
  %325 = load i64, i64* %12, align 8
  %326 = sub i64 %324, %325
  br label %327

327:                                              ; preds = %323, %320
  %328 = phi i64 [ %322, %320 ], [ %326, %323 ]
  %329 = trunc i64 %328 to i32
  store i32 %329, i32* %5, align 4
  br label %330

330:                                              ; preds = %327, %56, %25
  %331 = load i32, i32* %5, align 4
  ret i32 %331
}

declare dso_local %struct.rsocket* @idm_at(i32*, i32) #1

declare dso_local i32 @fastlock_acquire(i32*) #1

declare dso_local i32 @dsend(%struct.rsocket*, i8*, i64, i32) #1

declare dso_local i32 @fastlock_release(i32*) #1

declare dso_local i32 @rs_do_connect(%struct.rsocket*) #1

declare dso_local i32 @rs_send_iomaps(%struct.rsocket*, i32) #1

declare dso_local i32 @rs_can_send(%struct.rsocket*) #1

declare dso_local i32 @rs_get_comp(%struct.rsocket*, i32, i32) #1

declare dso_local i32 @rs_nonblocking(%struct.rsocket*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rs_write_data(%struct.rsocket*, %struct.ibv_sge*, i32, i64, i32) #1

declare dso_local i64 @rs_sbuf_left(%struct.rsocket*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
