; ModuleID = '/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_crypt-des.c_crypt_des.c'
source_filename = "/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_crypt-des.c_crypt_des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@des_initialised = common dso_local global i32 0, align 4
@_PASSWORD_EFMT1 = common dso_local global i8 0, align 1
@ascii64 = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypt_des(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* @des_initialised, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = call i32 (...) @des_init()
  br label %20

20:                                               ; preds = %18, %3
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32* %21, i32** %15, align 8
  br label %22

22:                                               ; preds = %45, %20
  %23 = load i32*, i32** %15, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %25 = ptrtoint i32* %23 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = sub nsw i64 %28, 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = shl i32 %34, 1
  %36 = load i32*, i32** %15, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %15, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %42, %31
  br label %22

46:                                               ; preds = %22
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %48 = bitcast i32* %47 to i8*
  %49 = call i64 @des_setkey(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %313

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @_PASSWORD_EFMT1, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %151

59:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 5
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @ascii_to_bin(i8 signext %68)
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 1
  %72 = mul nsw i32 %71, 6
  %73 = shl i32 %69, %72
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %60

79:                                               ; preds = %60
  store i32 5, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 9
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @ascii_to_bin(i8 signext %88)
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %90, 5
  %92 = mul nsw i32 %91, 6
  %93 = shl i32 %89, %92
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %83
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %80

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %146, %99
  %101 = load i8*, i8** %5, align 8
  %102 = load i8, i8* %101, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %104, label %147

104:                                              ; preds = %100
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %106 = bitcast i32* %105 to i8*
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %108 = bitcast i32* %107 to i8*
  %109 = call i64 @des_cipher(i8* %106, i8* %108, i64 0, i32 1)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 -1, i32* %4, align 4
  br label %313

112:                                              ; preds = %104
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32* %113, i32** %15, align 8
  br label %114

114:                                              ; preds = %130, %112
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %117 = ptrtoint i32* %115 to i64
  %118 = ptrtoint i32* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 4
  %121 = sub nsw i64 %120, 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = load i8*, i8** %5, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %123, %114
  %129 = phi i1 [ false, %114 ], [ %127, %123 ]
  br i1 %129, label %130, label %140

130:                                              ; preds = %128
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %5, align 8
  %133 = load i8, i8* %131, align 1
  %134 = sext i8 %133 to i32
  %135 = shl i32 %134, 1
  %136 = load i32*, i32** %15, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %15, align 8
  %138 = load i32, i32* %136, align 4
  %139 = xor i32 %138, %135
  store i32 %139, i32* %136, align 4
  br label %114

140:                                              ; preds = %128
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %142 = bitcast i32* %141 to i8*
  %143 = call i64 @des_setkey(i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 -1, i32* %4, align 4
  br label %313

146:                                              ; preds = %140
  br label %100

147:                                              ; preds = %100
  %148 = load i8*, i8** %7, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i8* @stpncpy(i8* %148, i8* %149, i32 9)
  store i8* %150, i8** %7, align 8
  br label %187

151:                                              ; preds = %52
  store i32 25, i32* %9, align 4
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = call i32 @ascii_to_bin(i8 signext %154)
  %156 = shl i32 %155, 6
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = call i32 @ascii_to_bin(i8 signext %159)
  %161 = or i32 %156, %160
  store i32 %161, i32* %10, align 4
  %162 = load i8*, i8** %6, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = load i8*, i8** %7, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %7, align 8
  store i8 %164, i8* %165, align 1
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %151
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  br label %182

177:                                              ; preds = %151
  %178 = load i8*, i8** %6, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  br label %182

182:                                              ; preds = %177, %172
  %183 = phi i32 [ %176, %172 ], [ %181, %177 ]
  %184 = trunc i32 %183 to i8
  %185 = load i8*, i8** %7, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %7, align 8
  store i8 %184, i8* %185, align 1
  br label %187

187:                                              ; preds = %182, %147
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @setup_salt(i32 %188)
  %190 = load i32, i32* %9, align 4
  %191 = call i64 @do_des(i64 0, i64 0, i32* %12, i32* %13, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  store i32 -1, i32* %4, align 4
  br label %313

194:                                              ; preds = %187
  %195 = load i32, i32* %12, align 4
  %196 = ashr i32 %195, 8
  store i32 %196, i32* %11, align 4
  %197 = load i8**, i8*** @ascii64, align 8
  %198 = load i32, i32* %11, align 4
  %199 = ashr i32 %198, 18
  %200 = and i32 %199, 63
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %197, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = ptrtoint i8* %203 to i8
  %205 = load i8*, i8** %7, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %7, align 8
  store i8 %204, i8* %205, align 1
  %207 = load i8**, i8*** @ascii64, align 8
  %208 = load i32, i32* %11, align 4
  %209 = ashr i32 %208, 12
  %210 = and i32 %209, 63
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %207, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = ptrtoint i8* %213 to i8
  %215 = load i8*, i8** %7, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %7, align 8
  store i8 %214, i8* %215, align 1
  %217 = load i8**, i8*** @ascii64, align 8
  %218 = load i32, i32* %11, align 4
  %219 = ashr i32 %218, 6
  %220 = and i32 %219, 63
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %217, i64 %221
  %223 = load i8*, i8** %222, align 8
  %224 = ptrtoint i8* %223 to i8
  %225 = load i8*, i8** %7, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %7, align 8
  store i8 %224, i8* %225, align 1
  %227 = load i8**, i8*** @ascii64, align 8
  %228 = load i32, i32* %11, align 4
  %229 = and i32 %228, 63
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %227, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = ptrtoint i8* %232 to i8
  %234 = load i8*, i8** %7, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %7, align 8
  store i8 %233, i8* %234, align 1
  %236 = load i32, i32* %12, align 4
  %237 = shl i32 %236, 16
  %238 = load i32, i32* %13, align 4
  %239 = ashr i32 %238, 16
  %240 = and i32 %239, 65535
  %241 = or i32 %237, %240
  store i32 %241, i32* %11, align 4
  %242 = load i8**, i8*** @ascii64, align 8
  %243 = load i32, i32* %11, align 4
  %244 = ashr i32 %243, 18
  %245 = and i32 %244, 63
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8*, i8** %242, i64 %246
  %248 = load i8*, i8** %247, align 8
  %249 = ptrtoint i8* %248 to i8
  %250 = load i8*, i8** %7, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %7, align 8
  store i8 %249, i8* %250, align 1
  %252 = load i8**, i8*** @ascii64, align 8
  %253 = load i32, i32* %11, align 4
  %254 = ashr i32 %253, 12
  %255 = and i32 %254, 63
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8*, i8** %252, i64 %256
  %258 = load i8*, i8** %257, align 8
  %259 = ptrtoint i8* %258 to i8
  %260 = load i8*, i8** %7, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %7, align 8
  store i8 %259, i8* %260, align 1
  %262 = load i8**, i8*** @ascii64, align 8
  %263 = load i32, i32* %11, align 4
  %264 = ashr i32 %263, 6
  %265 = and i32 %264, 63
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %262, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = ptrtoint i8* %268 to i8
  %270 = load i8*, i8** %7, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %7, align 8
  store i8 %269, i8* %270, align 1
  %272 = load i8**, i8*** @ascii64, align 8
  %273 = load i32, i32* %11, align 4
  %274 = and i32 %273, 63
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %272, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = ptrtoint i8* %277 to i8
  %279 = load i8*, i8** %7, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %7, align 8
  store i8 %278, i8* %279, align 1
  %281 = load i32, i32* %13, align 4
  %282 = shl i32 %281, 2
  store i32 %282, i32* %11, align 4
  %283 = load i8**, i8*** @ascii64, align 8
  %284 = load i32, i32* %11, align 4
  %285 = ashr i32 %284, 12
  %286 = and i32 %285, 63
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8*, i8** %283, i64 %287
  %289 = load i8*, i8** %288, align 8
  %290 = ptrtoint i8* %289 to i8
  %291 = load i8*, i8** %7, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %7, align 8
  store i8 %290, i8* %291, align 1
  %293 = load i8**, i8*** @ascii64, align 8
  %294 = load i32, i32* %11, align 4
  %295 = ashr i32 %294, 6
  %296 = and i32 %295, 63
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8*, i8** %293, i64 %297
  %299 = load i8*, i8** %298, align 8
  %300 = ptrtoint i8* %299 to i8
  %301 = load i8*, i8** %7, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %7, align 8
  store i8 %300, i8* %301, align 1
  %303 = load i8**, i8*** @ascii64, align 8
  %304 = load i32, i32* %11, align 4
  %305 = and i32 %304, 63
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %303, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = ptrtoint i8* %308 to i8
  %310 = load i8*, i8** %7, align 8
  %311 = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %311, i8** %7, align 8
  store i8 %309, i8* %310, align 1
  %312 = load i8*, i8** %7, align 8
  store i8 0, i8* %312, align 1
  store i32 0, i32* %4, align 4
  br label %313

313:                                              ; preds = %194, %193, %145, %111, %51
  %314 = load i32, i32* %4, align 4
  ret i32 %314
}

declare dso_local i32 @des_init(...) #1

declare dso_local i64 @des_setkey(i8*) #1

declare dso_local i32 @ascii_to_bin(i8 signext) #1

declare dso_local i64 @des_cipher(i8*, i8*, i64, i32) #1

declare dso_local i8* @stpncpy(i8*, i8*, i32) #1

declare dso_local i32 @setup_salt(i32) #1

declare dso_local i64 @do_des(i64, i64, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
