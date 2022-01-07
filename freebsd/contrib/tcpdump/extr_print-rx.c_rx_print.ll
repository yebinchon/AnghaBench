; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_rx_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_rx_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64, i32 }
%struct.TYPE_21__ = type { i32, i32* }
%struct.rx_header = type { i64, i32, i32, i32, i64, i32, i32, i32 }
%struct.ip = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c" [|rx] (%d)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" rx %s\00", align 1
@rx_types = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"type %d\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c" cid %08x call# %d\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" seq %d ser %d\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c" secindex %d serviceid %hu\00", align 1
@NUM_RX_FLAGS = common dso_local global i32 0, align 4
@rx_flags = common dso_local global %struct.TYPE_22__* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@RX_PACKET_TYPE_DATA = common dso_local global i64 0, align 8
@RX_CLIENT_INITIATED = common dso_local global i32 0, align 4
@RX_PACKET_TYPE_ABORT = common dso_local global i64 0, align 8
@RX_PACKET_TYPE_ACK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rx_print(%struct.TYPE_21__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.rx_header*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = ptrtoint i32* %19 to i64
  %22 = ptrtoint i32* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  %25 = icmp slt i64 %24, 48
  br i1 %25, label %26, label %32

26:                                               ; preds = %6
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to %struct.TYPE_21__*
  %31 = call i32 @ND_PRINT(%struct.TYPE_21__* %30)
  br label %317

32:                                               ; preds = %6
  %33 = load i32*, i32** %8, align 8
  %34 = bitcast i32* %33 to %struct.rx_header*
  store %struct.rx_header* %34, %struct.rx_header** %13, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = load i32, i32* @rx_types, align 4
  %37 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %38 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @tok2str(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_21__*
  %43 = call i32 @ND_PRINT(%struct.TYPE_21__* %42)
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %158

48:                                               ; preds = %32
  store i32 0, i32* %16, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %55 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %56 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %55, i32 0, i32 7
  %57 = call i32 @EXTRACT_32BITS(i32* %56)
  %58 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %59 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %58, i32 0, i32 6
  %60 = call i32 @EXTRACT_32BITS(i32* %59)
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %struct.TYPE_21__*
  %63 = call i32 @ND_PRINT(%struct.TYPE_21__* %62)
  br label %64

64:                                               ; preds = %53, %48
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %66 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %67 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %66, i32 0, i32 2
  %68 = call i32 @EXTRACT_32BITS(i32* %67)
  %69 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %70 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %69, i32 0, i32 5
  %71 = call i32 @EXTRACT_32BITS(i32* %70)
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to %struct.TYPE_21__*
  %74 = call i32 @ND_PRINT(%struct.TYPE_21__* %73)
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %79, label %91

79:                                               ; preds = %64
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %81 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %82 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %86 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %85, i32 0, i32 3
  %87 = call i32 @EXTRACT_16BITS(i32* %86)
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to %struct.TYPE_21__*
  %90 = call i32 @ND_PRINT(%struct.TYPE_21__* %89)
  br label %91

91:                                               ; preds = %79, %64
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %157

96:                                               ; preds = %91
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %153, %96
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @NUM_RX_FLAGS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %156

101:                                              ; preds = %97
  %102 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %103 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** @rx_flags, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %104, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %152

113:                                              ; preds = %101
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** @rx_flags, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %113
  %122 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %123 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** @rx_flags, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %124, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %121, %113
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  store i32 1, i32* %16, align 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %137 = call i32 @ND_PRINT(%struct.TYPE_21__* bitcast ([2 x i8]* @.str.6 to %struct.TYPE_21__*))
  br label %141

138:                                              ; preds = %132
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %140 = call i32 @ND_PRINT(%struct.TYPE_21__* bitcast ([2 x i8]* @.str.7 to %struct.TYPE_21__*))
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** @rx_flags, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to %struct.TYPE_21__*
  %151 = call i32 @ND_PRINT(%struct.TYPE_21__* %150)
  br label %152

152:                                              ; preds = %141, %121, %101
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %97

156:                                              ; preds = %97
  br label %157

157:                                              ; preds = %156, %91
  br label %158

158:                                              ; preds = %157, %32
  %159 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %160 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @RX_PACKET_TYPE_DATA, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %221

164:                                              ; preds = %158
  %165 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %166 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %165, i32 0, i32 2
  %167 = call i32 @EXTRACT_32BITS(i32* %166)
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %221

169:                                              ; preds = %164
  %170 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %171 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @RX_CLIENT_INITIATED, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %221

176:                                              ; preds = %169
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = load i32*, i32** %12, align 8
  %180 = bitcast i32* %179 to %struct.ip*
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @rx_cache_insert(%struct.TYPE_21__* %177, i32* %178, %struct.ip* %180, i32 %181)
  %183 = load i32, i32* %11, align 4
  switch i32 %183, label %219 [
    i32 132, label %184
    i32 133, label %189
    i32 130, label %194
    i32 129, label %199
    i32 131, label %204
    i32 128, label %209
    i32 134, label %214
  ]

184:                                              ; preds = %176
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %186 = load i32*, i32** %8, align 8
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @fs_print(%struct.TYPE_21__* %185, i32* %186, i32 %187)
  br label %220

189:                                              ; preds = %176
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %191 = load i32*, i32** %8, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @cb_print(%struct.TYPE_21__* %190, i32* %191, i32 %192)
  br label %220

194:                                              ; preds = %176
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @prot_print(%struct.TYPE_21__* %195, i32* %196, i32 %197)
  br label %220

199:                                              ; preds = %176
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @vldb_print(%struct.TYPE_21__* %200, i32* %201, i32 %202)
  br label %220

204:                                              ; preds = %176
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %206 = load i32*, i32** %8, align 8
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @kauth_print(%struct.TYPE_21__* %205, i32* %206, i32 %207)
  br label %220

209:                                              ; preds = %176
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %211 = load i32*, i32** %8, align 8
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @vol_print(%struct.TYPE_21__* %210, i32* %211, i32 %212)
  br label %220

214:                                              ; preds = %176
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %216 = load i32*, i32** %8, align 8
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @bos_print(%struct.TYPE_21__* %215, i32* %216, i32 %217)
  br label %220

219:                                              ; preds = %176
  br label %220

220:                                              ; preds = %219, %214, %209, %204, %199, %194, %189, %184
  br label %311

221:                                              ; preds = %169, %164, %158
  %222 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %223 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @RX_PACKET_TYPE_DATA, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %221
  %228 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %229 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %228, i32 0, i32 2
  %230 = call i32 @EXTRACT_32BITS(i32* %229)
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %238, label %232

232:                                              ; preds = %227, %221
  %233 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %234 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @RX_PACKET_TYPE_ABORT, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %298

238:                                              ; preds = %232, %227
  %239 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %240 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @RX_CLIENT_INITIATED, align 4
  %243 = and i32 %241, %242
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %298

245:                                              ; preds = %238
  %246 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %247 = load i32*, i32** %12, align 8
  %248 = bitcast i32* %247 to %struct.ip*
  %249 = load i32, i32* %10, align 4
  %250 = call i64 @rx_cache_find(%struct.rx_header* %246, %struct.ip* %248, i32 %249, i32* %15)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %298

252:                                              ; preds = %245
  %253 = load i32, i32* %10, align 4
  switch i32 %253, label %296 [
    i32 132, label %254
    i32 133, label %260
    i32 130, label %266
    i32 129, label %272
    i32 131, label %278
    i32 128, label %284
    i32 134, label %290
  ]

254:                                              ; preds = %252
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %256 = load i32*, i32** %8, align 8
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* %15, align 4
  %259 = call i32 @fs_reply_print(%struct.TYPE_21__* %255, i32* %256, i32 %257, i32 %258)
  br label %297

260:                                              ; preds = %252
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %262 = load i32*, i32** %8, align 8
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %15, align 4
  %265 = call i32 @cb_reply_print(%struct.TYPE_21__* %261, i32* %262, i32 %263, i32 %264)
  br label %297

266:                                              ; preds = %252
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %268 = load i32*, i32** %8, align 8
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* %15, align 4
  %271 = call i32 @prot_reply_print(%struct.TYPE_21__* %267, i32* %268, i32 %269, i32 %270)
  br label %297

272:                                              ; preds = %252
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %274 = load i32*, i32** %8, align 8
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* %15, align 4
  %277 = call i32 @vldb_reply_print(%struct.TYPE_21__* %273, i32* %274, i32 %275, i32 %276)
  br label %297

278:                                              ; preds = %252
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %280 = load i32*, i32** %8, align 8
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* %15, align 4
  %283 = call i32 @kauth_reply_print(%struct.TYPE_21__* %279, i32* %280, i32 %281, i32 %282)
  br label %297

284:                                              ; preds = %252
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %286 = load i32*, i32** %8, align 8
  %287 = load i32, i32* %9, align 4
  %288 = load i32, i32* %15, align 4
  %289 = call i32 @vol_reply_print(%struct.TYPE_21__* %285, i32* %286, i32 %287, i32 %288)
  br label %297

290:                                              ; preds = %252
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %292 = load i32*, i32** %8, align 8
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* %15, align 4
  %295 = call i32 @bos_reply_print(%struct.TYPE_21__* %291, i32* %292, i32 %293, i32 %294)
  br label %297

296:                                              ; preds = %252
  br label %297

297:                                              ; preds = %296, %290, %284, %278, %272, %266, %260, %254
  br label %310

298:                                              ; preds = %245, %238, %232
  %299 = load %struct.rx_header*, %struct.rx_header** %13, align 8
  %300 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @RX_PACKET_TYPE_ACK, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %309

304:                                              ; preds = %298
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %306 = load i32*, i32** %8, align 8
  %307 = load i32, i32* %9, align 4
  %308 = call i32 @rx_ack_print(%struct.TYPE_21__* %305, i32* %306, i32 %307)
  br label %309

309:                                              ; preds = %304, %298
  br label %310

310:                                              ; preds = %309, %297
  br label %311

311:                                              ; preds = %310, %220
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %313 = load i32, i32* %9, align 4
  %314 = sext i32 %313 to i64
  %315 = inttoptr i64 %314 to %struct.TYPE_21__*
  %316 = call i32 @ND_PRINT(%struct.TYPE_21__* %315)
  br label %317

317:                                              ; preds = %311, %26
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_21__*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @rx_cache_insert(%struct.TYPE_21__*, i32*, %struct.ip*, i32) #1

declare dso_local i32 @fs_print(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @cb_print(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @prot_print(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @vldb_print(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @kauth_print(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @vol_print(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @bos_print(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i64 @rx_cache_find(%struct.rx_header*, %struct.ip*, i32, i32*) #1

declare dso_local i32 @fs_reply_print(%struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local i32 @cb_reply_print(%struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local i32 @prot_reply_print(%struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local i32 @vldb_reply_print(%struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local i32 @kauth_reply_print(%struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local i32 @vol_reply_print(%struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local i32 @bos_reply_print(%struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local i32 @rx_ack_print(%struct.TYPE_21__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
