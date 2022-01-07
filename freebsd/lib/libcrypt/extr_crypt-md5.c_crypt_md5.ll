; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcrypt/extr_crypt-md5.c_crypt_md5.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcrypt/extr_crypt-md5.c_crypt_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5_SIZE = common dso_local global i32 0, align 4
@crypt_md5.magic = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [4 x i8] c"$1$\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypt_md5(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i32, i32* @MD5_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** @crypt_md5.magic, align 8
  %22 = load i8*, i8** @crypt_md5.magic, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call i32 @strncmp(i8* %20, i8* %21, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load i8*, i8** @crypt_md5.magic, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %26, %3
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %15, align 8
  br label %34

34:                                               ; preds = %52, %32
  %35 = load i8*, i8** %15, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i8*, i8** %15, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 36
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %15, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 8
  %48 = icmp ult i8* %45, %47
  br label %49

49:                                               ; preds = %44, %39, %34
  %50 = phi i1 [ false, %39 ], [ false, %34 ], [ %48, %44 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %15, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %15, align 8
  br label %34

55:                                               ; preds = %49
  %56 = load i8*, i8** %15, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = call i32 @MD5Init(i32* %7)
  %63 = load i8*, i8** %4, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = call i32 @MD5Update(i32* %7, i32* %64, i32 %66)
  %68 = load i8*, i8** @crypt_md5.magic, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load i8*, i8** @crypt_md5.magic, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = call i32 @MD5Update(i32* %7, i32* %69, i32 %71)
  %73 = load i8*, i8** %5, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @MD5Update(i32* %7, i32* %74, i32 %75)
  %77 = call i32 @MD5Init(i32* %8)
  %78 = load i8*, i8** %4, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = call i32 @MD5Update(i32* %8, i32* %79, i32 %81)
  %83 = load i8*, i8** %5, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @MD5Update(i32* %8, i32* %84, i32 %85)
  %87 = load i8*, i8** %4, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = call i32 @MD5Update(i32* %8, i32* %88, i32 %90)
  %92 = call i32 @MD5Final(i32* %19, i32* %8)
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @strlen(i8* %93)
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %109, %55
  %96 = load i32, i32* %11, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @MD5_SIZE, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @MD5_SIZE, align 4
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %11, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = call i32 @MD5Update(i32* %7, i32* %19, i32 %107)
  br label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @MD5_SIZE, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %11, align 4
  br label %95

113:                                              ; preds = %95
  %114 = mul nuw i64 4, %17
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memset(i32* %19, i32 0, i32 %115)
  %117 = load i8*, i8** %4, align 8
  %118 = call i32 @strlen(i8* %117)
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %133, %113
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load i32, i32* %12, align 4
  %124 = and i32 %123, 1
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 @MD5Update(i32* %7, i32* %19, i32 1)
  br label %132

128:                                              ; preds = %122
  %129 = load i8*, i8** %4, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = call i32 @MD5Update(i32* %7, i32* %130, i32 1)
  br label %132

132:                                              ; preds = %128, %126
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %12, align 4
  %135 = ashr i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %119

136:                                              ; preds = %119
  %137 = load i8*, i8** %6, align 8
  %138 = load i8*, i8** @crypt_md5.magic, align 8
  %139 = call i8* @stpcpy(i8* %137, i8* %138)
  store i8* %139, i8** %6, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i8* @stpncpy(i8* %140, i8* %141, i32 %142)
  store i8* %143, i8** %6, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %6, align 8
  store i8 36, i8* %144, align 1
  %146 = call i32 @MD5Final(i32* %19, i32* %7)
  store i32 0, i32* %12, align 4
  br label %147

147:                                              ; preds = %198, %136
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %148, 1000
  br i1 %149, label %150, label %201

150:                                              ; preds = %147
  %151 = call i32 @MD5Init(i32* %8)
  %152 = load i32, i32* %12, align 4
  %153 = and i32 %152, 1
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i8*, i8** %4, align 8
  %157 = bitcast i8* %156 to i32*
  %158 = load i8*, i8** %4, align 8
  %159 = call i32 @strlen(i8* %158)
  %160 = call i32 @MD5Update(i32* %8, i32* %157, i32 %159)
  br label %164

161:                                              ; preds = %150
  %162 = load i32, i32* @MD5_SIZE, align 4
  %163 = call i32 @MD5Update(i32* %8, i32* %19, i32 %162)
  br label %164

164:                                              ; preds = %161, %155
  %165 = load i32, i32* %12, align 4
  %166 = srem i32 %165, 3
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load i8*, i8** %5, align 8
  %170 = bitcast i8* %169 to i32*
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @MD5Update(i32* %8, i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %168, %164
  %174 = load i32, i32* %12, align 4
  %175 = srem i32 %174, 7
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i8*, i8** %4, align 8
  %179 = bitcast i8* %178 to i32*
  %180 = load i8*, i8** %4, align 8
  %181 = call i32 @strlen(i8* %180)
  %182 = call i32 @MD5Update(i32* %8, i32* %179, i32 %181)
  br label %183

183:                                              ; preds = %177, %173
  %184 = load i32, i32* %12, align 4
  %185 = and i32 %184, 1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load i32, i32* @MD5_SIZE, align 4
  %189 = call i32 @MD5Update(i32* %8, i32* %19, i32 %188)
  br label %196

190:                                              ; preds = %183
  %191 = load i8*, i8** %4, align 8
  %192 = bitcast i8* %191 to i32*
  %193 = load i8*, i8** %4, align 8
  %194 = call i32 @strlen(i8* %193)
  %195 = call i32 @MD5Update(i32* %8, i32* %192, i32 %194)
  br label %196

196:                                              ; preds = %190, %187
  %197 = call i32 @MD5Final(i32* %19, i32* %8)
  br label %198

198:                                              ; preds = %196
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %12, align 4
  br label %147

201:                                              ; preds = %147
  %202 = getelementptr inbounds i32, i32* %19, i64 0
  %203 = load i32, i32* %202, align 16
  %204 = shl i32 %203, 16
  %205 = getelementptr inbounds i32, i32* %19, i64 6
  %206 = load i32, i32* %205, align 8
  %207 = shl i32 %206, 8
  %208 = or i32 %204, %207
  %209 = getelementptr inbounds i32, i32* %19, i64 12
  %210 = load i32, i32* %209, align 16
  %211 = or i32 %208, %210
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %9, align 8
  %213 = load i8*, i8** %6, align 8
  %214 = load i64, i64* %9, align 8
  %215 = call i32 @_crypt_to64(i8* %213, i64 %214, i32 4)
  %216 = load i8*, i8** %6, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 4
  store i8* %217, i8** %6, align 8
  %218 = getelementptr inbounds i32, i32* %19, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = shl i32 %219, 16
  %221 = getelementptr inbounds i32, i32* %19, i64 7
  %222 = load i32, i32* %221, align 4
  %223 = shl i32 %222, 8
  %224 = or i32 %220, %223
  %225 = getelementptr inbounds i32, i32* %19, i64 13
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %224, %226
  %228 = sext i32 %227 to i64
  store i64 %228, i64* %9, align 8
  %229 = load i8*, i8** %6, align 8
  %230 = load i64, i64* %9, align 8
  %231 = call i32 @_crypt_to64(i8* %229, i64 %230, i32 4)
  %232 = load i8*, i8** %6, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 4
  store i8* %233, i8** %6, align 8
  %234 = getelementptr inbounds i32, i32* %19, i64 2
  %235 = load i32, i32* %234, align 8
  %236 = shl i32 %235, 16
  %237 = getelementptr inbounds i32, i32* %19, i64 8
  %238 = load i32, i32* %237, align 16
  %239 = shl i32 %238, 8
  %240 = or i32 %236, %239
  %241 = getelementptr inbounds i32, i32* %19, i64 14
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %240, %242
  %244 = sext i32 %243 to i64
  store i64 %244, i64* %9, align 8
  %245 = load i8*, i8** %6, align 8
  %246 = load i64, i64* %9, align 8
  %247 = call i32 @_crypt_to64(i8* %245, i64 %246, i32 4)
  %248 = load i8*, i8** %6, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 4
  store i8* %249, i8** %6, align 8
  %250 = getelementptr inbounds i32, i32* %19, i64 3
  %251 = load i32, i32* %250, align 4
  %252 = shl i32 %251, 16
  %253 = getelementptr inbounds i32, i32* %19, i64 9
  %254 = load i32, i32* %253, align 4
  %255 = shl i32 %254, 8
  %256 = or i32 %252, %255
  %257 = getelementptr inbounds i32, i32* %19, i64 15
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %256, %258
  %260 = sext i32 %259 to i64
  store i64 %260, i64* %9, align 8
  %261 = load i8*, i8** %6, align 8
  %262 = load i64, i64* %9, align 8
  %263 = call i32 @_crypt_to64(i8* %261, i64 %262, i32 4)
  %264 = load i8*, i8** %6, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 4
  store i8* %265, i8** %6, align 8
  %266 = getelementptr inbounds i32, i32* %19, i64 4
  %267 = load i32, i32* %266, align 16
  %268 = shl i32 %267, 16
  %269 = getelementptr inbounds i32, i32* %19, i64 10
  %270 = load i32, i32* %269, align 8
  %271 = shl i32 %270, 8
  %272 = or i32 %268, %271
  %273 = getelementptr inbounds i32, i32* %19, i64 5
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %272, %274
  %276 = sext i32 %275 to i64
  store i64 %276, i64* %9, align 8
  %277 = load i8*, i8** %6, align 8
  %278 = load i64, i64* %9, align 8
  %279 = call i32 @_crypt_to64(i8* %277, i64 %278, i32 4)
  %280 = load i8*, i8** %6, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 4
  store i8* %281, i8** %6, align 8
  %282 = getelementptr inbounds i32, i32* %19, i64 11
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  store i64 %284, i64* %9, align 8
  %285 = load i8*, i8** %6, align 8
  %286 = load i64, i64* %9, align 8
  %287 = call i32 @_crypt_to64(i8* %285, i64 %286, i32 2)
  %288 = load i8*, i8** %6, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 2
  store i8* %289, i8** %6, align 8
  %290 = load i8*, i8** %6, align 8
  store i8 0, i8* %290, align 1
  %291 = mul nuw i64 4, %17
  %292 = trunc i64 %291 to i32
  %293 = call i32 @memset(i32* %19, i32 0, i32 %292)
  %294 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %294)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @MD5Init(i32*) #2

declare dso_local i32 @MD5Update(i32*, i32*, i32) #2

declare dso_local i32 @MD5Final(i32*, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i8* @stpcpy(i8*, i8*) #2

declare dso_local i8* @stpncpy(i8*, i8*, i32) #2

declare dso_local i32 @_crypt_to64(i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
