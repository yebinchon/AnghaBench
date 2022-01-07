; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_xfer_partial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_xfer_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.target_ops = type { i32 }
%struct.remote_state = type { i32 }

@remote_protocol_qPart_auxv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PACKET_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"qPart:auxv:read::%s,%s\00", align 1
@PACKET_OK = common dso_local global i32 0, align 4
@remote_protocol_qPart_dirty = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"qPart:dirty:read::%lx\00", align 1
@remote_desc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"remote query is only available after target open\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)* @remote_xfer_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_xfer_partial(%struct.target_ops* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.target_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.remote_state*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.target_ops* %0, %struct.target_ops** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %23, %struct.remote_state** %16, align 8
  %24 = load %struct.remote_state*, %struct.remote_state** %16, align 8
  %25 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @alloca(i32 %26)
  store i8* %27, i8** %18, align 8
  %28 = load i8*, i8** %18, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8* %29, i8** %19, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %7
  %33 = load i8*, i8** %12, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %7
  store i32 -1, i32* %8, align 4
  br label %298

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %181 [
    i32 128, label %38
    i32 130, label %39
    i32 131, label %40
    i32 129, label %142
  ]

38:                                               ; preds = %36
  store i8 75, i8* %20, align 1
  br label %182

39:                                               ; preds = %36
  store i8 82, i8* %20, align 1
  br label %182

40:                                               ; preds = %36
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_protocol_qPart_auxv, i32 0, i32 0), align 4
  %42 = load i32, i32* @PACKET_DISABLE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %141

44:                                               ; preds = %40
  store i32 0, i32* %21, align 4
  br label %45

45:                                               ; preds = %138, %44
  %46 = load i32, i32* %15, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %139

48:                                               ; preds = %45
  %49 = load %struct.remote_state*, %struct.remote_state** %16, align 8
  %50 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 2
  %53 = sdiv i32 %52, 2
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @min(i32 %53, i32 %54)
  store i32 %55, i32* %22, align 4
  %56 = load i8*, i8** %18, align 8
  %57 = load %struct.remote_state*, %struct.remote_state** %16, align 8
  %58 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i8* @phex_nz(i32 %60, i32 4)
  %62 = load i32, i32* %22, align 4
  %63 = call i8* @phex_nz(i32 %62, i32 4)
  %64 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %56, i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %61, i8* %63)
  %65 = load i8*, i8** %18, align 8
  %66 = call i32 @putpkt(i8* %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %48
  %70 = load i32, i32* %21, align 4
  %71 = icmp ugt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %21, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %17, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %8, align 4
  br label %298

78:                                               ; preds = %48
  %79 = load i8*, i8** %18, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %18, align 8
  %82 = load %struct.remote_state*, %struct.remote_state** %16, align 8
  %83 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @getpkt(i8* %81, i32 %84, i32 0)
  %86 = load i8*, i8** %18, align 8
  %87 = call i32 @packet_ok(i8* %86, %struct.TYPE_4__* @remote_protocol_qPart_auxv)
  %88 = load i32, i32* @PACKET_OK, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %78
  %91 = load i32, i32* %21, align 4
  %92 = icmp ugt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %21, align 4
  br label %96

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ -1, %95 ]
  store i32 %97, i32* %8, align 4
  br label %298

98:                                               ; preds = %78
  %99 = load i8*, i8** %18, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 79
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load i8*, i8** %18, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 75
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i8*, i8** %18, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %139

117:                                              ; preds = %110, %104, %98
  %118 = load i8*, i8** %18, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @hex2bin(i8* %118, i8* %119, i32 %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %117
  %125 = load i8*, i8** %12, align 8
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  store i8* %128, i8** %12, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %21, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %21, align 4
  br label %138

138:                                              ; preds = %124, %117
  br label %45

139:                                              ; preds = %116, %45
  %140 = load i32, i32* %21, align 4
  store i32 %140, i32* %8, align 4
  br label %298

141:                                              ; preds = %40
  store i32 -1, i32* %8, align 4
  br label %298

142:                                              ; preds = %36
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_protocol_qPart_dirty, i32 0, i32 0), align 4
  %144 = load i32, i32* @PACKET_DISABLE, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %180

146:                                              ; preds = %142
  %147 = load i8*, i8** %18, align 8
  %148 = load %struct.remote_state*, %struct.remote_state** %16, align 8
  %149 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %14, align 4
  %152 = ashr i32 %151, 3
  %153 = sext i32 %152 to i64
  %154 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %147, i32 %150, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %153)
  %155 = load i8*, i8** %18, align 8
  %156 = call i32 @putpkt(i8* %155)
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %17, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %146
  %160 = load i32, i32* %17, align 4
  store i32 %160, i32* %8, align 4
  br label %298

161:                                              ; preds = %146
  %162 = load i8*, i8** %18, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  store i8 0, i8* %163, align 1
  %164 = load i8*, i8** %18, align 8
  %165 = load %struct.remote_state*, %struct.remote_state** %16, align 8
  %166 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @getpkt(i8* %164, i32 %167, i32 0)
  %169 = load i8*, i8** %18, align 8
  %170 = call i32 @packet_ok(i8* %169, %struct.TYPE_4__* @remote_protocol_qPart_dirty)
  %171 = load i32, i32* @PACKET_OK, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %161
  store i32 -1, i32* %8, align 4
  br label %298

174:                                              ; preds = %161
  %175 = load i8*, i8** %18, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @hex2bin(i8* %175, i8* %176, i32 %177)
  store i32 %178, i32* %17, align 4
  %179 = load i32, i32* %17, align 4
  store i32 %179, i32* %8, align 4
  br label %298

180:                                              ; preds = %142
  store i32 -1, i32* %8, align 4
  br label %298

181:                                              ; preds = %36
  store i32 -1, i32* %8, align 4
  br label %298

182:                                              ; preds = %39, %38
  %183 = load i32, i32* %14, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load i32, i32* %15, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load %struct.remote_state*, %struct.remote_state** %16, align 8
  %190 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %8, align 4
  br label %298

192:                                              ; preds = %185, %182
  %193 = load i32, i32* %15, align 4
  %194 = load %struct.remote_state*, %struct.remote_state** %16, align 8
  %195 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  store i32 -1, i32* %8, align 4
  br label %298

199:                                              ; preds = %192
  %200 = load %struct.remote_state*, %struct.remote_state** %16, align 8
  %201 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* @remote_desc, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %199
  %206 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %199
  %208 = load i8*, i8** %11, align 8
  %209 = icmp ne i8* %208, null
  %210 = zext i1 %209 to i32
  %211 = call i32 @gdb_assert(i32 %210)
  %212 = load i8*, i8** %12, align 8
  %213 = icmp ne i8* %212, null
  %214 = zext i1 %213 to i32
  %215 = call i32 @gdb_assert(i32 %214)
  %216 = load i8*, i8** %19, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %19, align 8
  store i8 113, i8* %216, align 1
  %218 = load i8, i8* %20, align 1
  %219 = load i8*, i8** %19, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %19, align 8
  store i8 %218, i8* %219, align 1
  store i32 0, i32* %17, align 4
  br label %221

221:                                              ; preds = %262, %207
  %222 = load i8*, i8** %11, align 8
  %223 = load i32, i32* %17, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %221
  %230 = load i32, i32* %17, align 4
  %231 = load %struct.remote_state*, %struct.remote_state** %16, align 8
  %232 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %233, 8
  %235 = icmp slt i32 %230, %234
  br label %236

236:                                              ; preds = %229, %221
  %237 = phi i1 [ false, %221 ], [ %235, %229 ]
  br i1 %237, label %238, label %275

238:                                              ; preds = %236
  %239 = load i8*, i8** %11, align 8
  %240 = load i32, i32* %17, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = call i64 @isprint(i8 signext %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %262

246:                                              ; preds = %238
  %247 = load i8*, i8** %11, align 8
  %248 = load i32, i32* %17, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %247, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp ne i32 %252, 36
  br i1 %253, label %254, label %262

254:                                              ; preds = %246
  %255 = load i8*, i8** %11, align 8
  %256 = load i32, i32* %17, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp ne i32 %260, 35
  br label %262

262:                                              ; preds = %254, %246, %238
  %263 = phi i1 [ false, %246 ], [ false, %238 ], [ %261, %254 ]
  %264 = zext i1 %263 to i32
  %265 = call i32 @gdb_assert(i32 %264)
  %266 = load i8*, i8** %11, align 8
  %267 = load i32, i32* %17, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = load i8*, i8** %19, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %19, align 8
  store i8 %270, i8* %271, align 1
  %273 = load i32, i32* %17, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %17, align 4
  br label %221

275:                                              ; preds = %236
  %276 = load i8*, i8** %19, align 8
  store i8 0, i8* %276, align 1
  %277 = load i8*, i8** %11, align 8
  %278 = load i32, i32* %17, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 0
  %284 = zext i1 %283 to i32
  %285 = call i32 @gdb_assert(i32 %284)
  %286 = load i8*, i8** %18, align 8
  %287 = call i32 @putpkt(i8* %286)
  store i32 %287, i32* %17, align 4
  %288 = load i32, i32* %17, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %275
  %291 = load i32, i32* %17, align 4
  store i32 %291, i32* %8, align 4
  br label %298

292:                                              ; preds = %275
  %293 = load i8*, i8** %12, align 8
  %294 = load i32, i32* %15, align 4
  %295 = call i32 @getpkt(i8* %293, i32 %294, i32 0)
  %296 = load i8*, i8** %12, align 8
  %297 = call i32 @strlen(i8* %296)
  store i32 %297, i32* %8, align 4
  br label %298

298:                                              ; preds = %292, %290, %198, %188, %181, %180, %174, %173, %159, %141, %139, %96, %76, %35
  %299 = load i32, i32* %8, align 4
  ret i32 %299
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @phex_nz(i32, i32) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

declare dso_local i32 @packet_ok(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @hex2bin(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
