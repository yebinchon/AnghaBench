; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_vldb_reply_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_vldb_reply_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_header = type { i64 }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c" vldb\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" reply %s\00", align 1
@vldb_req = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"op#%d\00", align 1
@RX_PACKET_TYPE_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c" count\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" nextindex\00", align 1
@VLNAMEMAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c" numservers\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" %lu\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" servers\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" partitions\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" rwvol\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" rovol\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" backup\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" newvol\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" afsuuid\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c" errcode\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c" [|vldb]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @vldb_reply_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vldb_reply_print(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_header*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %401

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to %struct.rx_header*
  store %struct.rx_header* %22, %struct.rx_header** %9, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str to i32*))
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @is_ubik(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ubik_reply_print(i32* %29, i32* %30, i32 %31, i32 %32)
  br label %401

34:                                               ; preds = %20
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @vldb_req, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @tok2str(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  %41 = call i32 @ND_PRINT(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  store i32* %43, i32** %6, align 8
  %44 = load %struct.rx_header*, %struct.rx_header** %9, align 8
  %45 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RX_PACKET_TYPE_DATA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %393

49:                                               ; preds = %34
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %391 [
    i32 510, label %51
    i32 503, label %58
    i32 504, label %58
    i32 505, label %169
    i32 521, label %173
    i32 529, label %173
    i32 518, label %180
    i32 519, label %180
    i32 526, label %285
    i32 527, label %285
  ]

51:                                               ; preds = %49
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.3 to i32*))
  %54 = call i32 (...) @INTOUT()
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.4 to i32*))
  %57 = call i32 (...) @INTOUT()
  br label %58

58:                                               ; preds = %49, %49, %51
  %59 = load i32, i32* @VLNAMEMAX, align 4
  %60 = call i32 @VECOUT(i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ND_TCHECK2(i32 %63, i32 4)
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.5 to i32*))
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ND_TCHECK2(i32 %71, i32 4)
  %73 = load i32*, i32** %6, align 8
  %74 = call i64 @EXTRACT_32BITS(i32* %73)
  store i64 %74, i64* %11, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32* %76, i32** %6, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i64, i64* %11, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = call i32 @ND_PRINT(i32* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.7 to i32*))
  store i64 0, i64* %10, align 8
  br label %83

83:                                               ; preds = %107, %58
  %84 = load i64, i64* %10, align 8
  %85 = icmp ult i64 %84, 8
  br i1 %85, label %86, label %110

86:                                               ; preds = %83
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ND_TCHECK2(i32 %89, i32 4)
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = bitcast i32* %96 to %struct.in_addr*
  %98 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @intoa(i32 %99)
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i32*
  %103 = call i32 @ND_PRINT(i32* %102)
  br label %104

104:                                              ; preds = %94, %86
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  store i32* %106, i32** %6, align 8
  br label %107

107:                                              ; preds = %104
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %10, align 8
  br label %83

110:                                              ; preds = %83
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.9 to i32*))
  store i64 0, i64* %10, align 8
  br label %113

113:                                              ; preds = %150, %110
  %114 = load i64, i64* %10, align 8
  %115 = icmp ult i64 %114, 8
  br i1 %115, label %116, label %153

116:                                              ; preds = %113
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ND_TCHECK2(i32 %119, i32 4)
  %121 = load i32*, i32** %6, align 8
  %122 = call i64 @EXTRACT_32BITS(i32* %121)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %11, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %116
  %127 = load i64, i64* %12, align 8
  %128 = icmp ule i64 %127, 26
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32*, i32** %5, align 8
  %131 = load i64, i64* %12, align 8
  %132 = trunc i64 %131 to i32
  %133 = add nsw i32 97, %132
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i32*
  %136 = call i32 @ND_PRINT(i32* %135)
  br label %147

137:                                              ; preds = %126, %116
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* %11, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load i32*, i32** %5, align 8
  %143 = load i64, i64* %12, align 8
  %144 = inttoptr i64 %143 to i32*
  %145 = call i32 @ND_PRINT(i32* %144)
  br label %146

146:                                              ; preds = %141, %137
  br label %147

147:                                              ; preds = %146, %129
  %148 = load i32*, i32** %6, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 4
  store i32* %149, i32** %6, align 8
  br label %150

150:                                              ; preds = %147
  %151 = load i64, i64* %10, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %10, align 8
  br label %113

153:                                              ; preds = %113
  %154 = load i32*, i32** %6, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ND_TCHECK2(i32 %156, i32 32)
  %158 = load i32*, i32** %6, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 32
  store i32* %159, i32** %6, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.11 to i32*))
  %162 = call i32 (...) @UINTOUT()
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.12 to i32*))
  %165 = call i32 (...) @UINTOUT()
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.13 to i32*))
  %168 = call i32 (...) @UINTOUT()
  br label %392

169:                                              ; preds = %49
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.14 to i32*))
  %172 = call i32 (...) @UINTOUT()
  br label %392

173:                                              ; preds = %49, %49
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.3 to i32*))
  %176 = call i32 (...) @INTOUT()
  %177 = load i32*, i32** %5, align 8
  %178 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.4 to i32*))
  %179 = call i32 (...) @INTOUT()
  br label %180

180:                                              ; preds = %49, %49, %173
  %181 = load i32, i32* @VLNAMEMAX, align 4
  %182 = call i32 @VECOUT(i32 %181)
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.5 to i32*))
  %185 = load i32*, i32** %6, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ND_TCHECK2(i32 %187, i32 4)
  %189 = load i32*, i32** %6, align 8
  %190 = call i64 @EXTRACT_32BITS(i32* %189)
  store i64 %190, i64* %13, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 4
  store i32* %192, i32** %6, align 8
  %193 = load i32*, i32** %5, align 8
  %194 = load i64, i64* %13, align 8
  %195 = inttoptr i64 %194 to i32*
  %196 = call i32 @ND_PRINT(i32* %195)
  %197 = load i32*, i32** %5, align 8
  %198 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.7 to i32*))
  store i64 0, i64* %10, align 8
  br label %199

199:                                              ; preds = %223, %180
  %200 = load i64, i64* %10, align 8
  %201 = icmp ult i64 %200, 13
  br i1 %201, label %202, label %226

202:                                              ; preds = %199
  %203 = load i32*, i32** %6, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @ND_TCHECK2(i32 %205, i32 4)
  %207 = load i64, i64* %10, align 8
  %208 = load i64, i64* %13, align 8
  %209 = icmp ult i64 %207, %208
  br i1 %209, label %210, label %220

210:                                              ; preds = %202
  %211 = load i32*, i32** %5, align 8
  %212 = load i32*, i32** %6, align 8
  %213 = bitcast i32* %212 to %struct.in_addr*
  %214 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @intoa(i32 %215)
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to i32*
  %219 = call i32 @ND_PRINT(i32* %218)
  br label %220

220:                                              ; preds = %210, %202
  %221 = load i32*, i32** %6, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 4
  store i32* %222, i32** %6, align 8
  br label %223

223:                                              ; preds = %220
  %224 = load i64, i64* %10, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %10, align 8
  br label %199

226:                                              ; preds = %199
  %227 = load i32*, i32** %5, align 8
  %228 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.9 to i32*))
  store i64 0, i64* %10, align 8
  br label %229

229:                                              ; preds = %266, %226
  %230 = load i64, i64* %10, align 8
  %231 = icmp ult i64 %230, 13
  br i1 %231, label %232, label %269

232:                                              ; preds = %229
  %233 = load i32*, i32** %6, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @ND_TCHECK2(i32 %235, i32 4)
  %237 = load i32*, i32** %6, align 8
  %238 = call i64 @EXTRACT_32BITS(i32* %237)
  store i64 %238, i64* %14, align 8
  %239 = load i64, i64* %10, align 8
  %240 = load i64, i64* %13, align 8
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %242, label %253

242:                                              ; preds = %232
  %243 = load i64, i64* %14, align 8
  %244 = icmp ule i64 %243, 26
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load i32*, i32** %5, align 8
  %247 = load i64, i64* %14, align 8
  %248 = trunc i64 %247 to i32
  %249 = add nsw i32 97, %248
  %250 = sext i32 %249 to i64
  %251 = inttoptr i64 %250 to i32*
  %252 = call i32 @ND_PRINT(i32* %251)
  br label %263

253:                                              ; preds = %242, %232
  %254 = load i64, i64* %10, align 8
  %255 = load i64, i64* %13, align 8
  %256 = icmp ult i64 %254, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %253
  %258 = load i32*, i32** %5, align 8
  %259 = load i64, i64* %14, align 8
  %260 = inttoptr i64 %259 to i32*
  %261 = call i32 @ND_PRINT(i32* %260)
  br label %262

262:                                              ; preds = %257, %253
  br label %263

263:                                              ; preds = %262, %245
  %264 = load i32*, i32** %6, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 4
  store i32* %265, i32** %6, align 8
  br label %266

266:                                              ; preds = %263
  %267 = load i64, i64* %10, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %10, align 8
  br label %229

269:                                              ; preds = %229
  %270 = load i32*, i32** %6, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @ND_TCHECK2(i32 %272, i32 52)
  %274 = load i32*, i32** %6, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 52
  store i32* %275, i32** %6, align 8
  %276 = load i32*, i32** %5, align 8
  %277 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.11 to i32*))
  %278 = call i32 (...) @UINTOUT()
  %279 = load i32*, i32** %5, align 8
  %280 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.12 to i32*))
  %281 = call i32 (...) @UINTOUT()
  %282 = load i32*, i32** %5, align 8
  %283 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.13 to i32*))
  %284 = call i32 (...) @UINTOUT()
  br label %392

285:                                              ; preds = %49, %49
  %286 = load i32, i32* @VLNAMEMAX, align 4
  %287 = call i32 @VECOUT(i32 %286)
  %288 = load i32*, i32** %5, align 8
  %289 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.5 to i32*))
  %290 = load i32*, i32** %6, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @ND_TCHECK2(i32 %292, i32 4)
  %294 = load i32*, i32** %6, align 8
  %295 = call i64 @EXTRACT_32BITS(i32* %294)
  store i64 %295, i64* %15, align 8
  %296 = load i32*, i32** %6, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 4
  store i32* %297, i32** %6, align 8
  %298 = load i32*, i32** %5, align 8
  %299 = load i64, i64* %15, align 8
  %300 = inttoptr i64 %299 to i32*
  %301 = call i32 @ND_PRINT(i32* %300)
  %302 = load i32*, i32** %5, align 8
  %303 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.7 to i32*))
  store i64 0, i64* %10, align 8
  br label %304

304:                                              ; preds = %323, %285
  %305 = load i64, i64* %10, align 8
  %306 = icmp ult i64 %305, 13
  br i1 %306, label %307, label %326

307:                                              ; preds = %304
  %308 = load i64, i64* %10, align 8
  %309 = load i64, i64* %15, align 8
  %310 = icmp ult i64 %308, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %307
  %312 = load i32*, i32** %5, align 8
  %313 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.15 to i32*))
  %314 = call i32 (...) @AFSUUIDOUT()
  br label %322

315:                                              ; preds = %307
  %316 = load i32*, i32** %6, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @ND_TCHECK2(i32 %318, i32 44)
  %320 = load i32*, i32** %6, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 44
  store i32* %321, i32** %6, align 8
  br label %322

322:                                              ; preds = %315, %311
  br label %323

323:                                              ; preds = %322
  %324 = load i64, i64* %10, align 8
  %325 = add i64 %324, 1
  store i64 %325, i64* %10, align 8
  br label %304

326:                                              ; preds = %304
  %327 = load i32*, i32** %6, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @ND_TCHECK2(i32 %329, i32 52)
  %331 = load i32*, i32** %6, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 52
  store i32* %332, i32** %6, align 8
  %333 = load i32*, i32** %5, align 8
  %334 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.9 to i32*))
  store i64 0, i64* %10, align 8
  br label %335

335:                                              ; preds = %372, %326
  %336 = load i64, i64* %10, align 8
  %337 = icmp ult i64 %336, 13
  br i1 %337, label %338, label %375

338:                                              ; preds = %335
  %339 = load i32*, i32** %6, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @ND_TCHECK2(i32 %341, i32 4)
  %343 = load i32*, i32** %6, align 8
  %344 = call i64 @EXTRACT_32BITS(i32* %343)
  store i64 %344, i64* %16, align 8
  %345 = load i64, i64* %10, align 8
  %346 = load i64, i64* %15, align 8
  %347 = icmp ult i64 %345, %346
  br i1 %347, label %348, label %359

348:                                              ; preds = %338
  %349 = load i64, i64* %16, align 8
  %350 = icmp ule i64 %349, 26
  br i1 %350, label %351, label %359

351:                                              ; preds = %348
  %352 = load i32*, i32** %5, align 8
  %353 = load i64, i64* %16, align 8
  %354 = trunc i64 %353 to i32
  %355 = add nsw i32 97, %354
  %356 = sext i32 %355 to i64
  %357 = inttoptr i64 %356 to i32*
  %358 = call i32 @ND_PRINT(i32* %357)
  br label %369

359:                                              ; preds = %348, %338
  %360 = load i64, i64* %10, align 8
  %361 = load i64, i64* %15, align 8
  %362 = icmp ult i64 %360, %361
  br i1 %362, label %363, label %368

363:                                              ; preds = %359
  %364 = load i32*, i32** %5, align 8
  %365 = load i64, i64* %16, align 8
  %366 = inttoptr i64 %365 to i32*
  %367 = call i32 @ND_PRINT(i32* %366)
  br label %368

368:                                              ; preds = %363, %359
  br label %369

369:                                              ; preds = %368, %351
  %370 = load i32*, i32** %6, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 4
  store i32* %371, i32** %6, align 8
  br label %372

372:                                              ; preds = %369
  %373 = load i64, i64* %10, align 8
  %374 = add i64 %373, 1
  store i64 %374, i64* %10, align 8
  br label %335

375:                                              ; preds = %335
  %376 = load i32*, i32** %6, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @ND_TCHECK2(i32 %378, i32 52)
  %380 = load i32*, i32** %6, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 52
  store i32* %381, i32** %6, align 8
  %382 = load i32*, i32** %5, align 8
  %383 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.11 to i32*))
  %384 = call i32 (...) @UINTOUT()
  %385 = load i32*, i32** %5, align 8
  %386 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.12 to i32*))
  %387 = call i32 (...) @UINTOUT()
  %388 = load i32*, i32** %5, align 8
  %389 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.13 to i32*))
  %390 = call i32 (...) @UINTOUT()
  br label %391

391:                                              ; preds = %49, %375
  br label %392

392:                                              ; preds = %391, %269, %169, %153
  br label %397

393:                                              ; preds = %34
  %394 = load i32*, i32** %5, align 8
  %395 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.16 to i32*))
  %396 = call i32 (...) @INTOUT()
  br label %397

397:                                              ; preds = %393, %392
  br label %401

398:                                              ; No predecessors!
  %399 = load i32*, i32** %5, align 8
  %400 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.17 to i32*))
  br label %401

401:                                              ; preds = %398, %397, %28, %19
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @is_ubik(i32) #1

declare dso_local i32 @ubik_reply_print(i32*, i32*, i32, i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @INTOUT(...) #1

declare dso_local i32 @VECOUT(i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @intoa(i32) #1

declare dso_local i32 @UINTOUT(...) #1

declare dso_local i32 @AFSUUIDOUT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
