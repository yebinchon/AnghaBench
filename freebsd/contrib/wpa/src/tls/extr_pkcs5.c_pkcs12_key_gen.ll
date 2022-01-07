; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs5.c_pkcs12_key_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs5.c_pkcs12_key_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, i32, i32, i64, i32*)* @pkcs12_key_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs12_key_gen(i32* %0, i64 %1, i32* %2, i64 %3, i32 %4, i32 %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca [2 x i32*], align 16
  %30 = alloca [2 x i64], align 16
  %31 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32* %7, i32** %16, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  store i32 -1, i32* %26, align 4
  %32 = load i32, i32* @SHA1_MAC_LEN, align 4
  store i32 %32, i32* %17, align 4
  store i32 64, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = call i32* @os_malloc(i32 %33)
  store i32* %34, i32** %22, align 8
  %35 = load i32*, i32** %22, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %8
  br label %234

38:                                               ; preds = %8
  %39 = load i32*, i32** %22, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @os_memset(i32* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %18, align 4
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* %18, align 4
  %47 = zext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = sub i64 %48, 1
  %50 = load i32, i32* %18, align 4
  %51 = zext i32 %50 to i64
  %52 = udiv i64 %49, %51
  %53 = mul i64 %44, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %18, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %18, align 4
  %59 = zext i32 %58 to i64
  %60 = add i64 %57, %59
  %61 = sub i64 %60, 1
  %62 = load i32, i32* %18, align 4
  %63 = zext i32 %62 to i64
  %64 = udiv i64 %61, %63
  %65 = mul i64 %56, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %20, align 4
  %69 = add i32 %67, %68
  %70 = call i32* @os_malloc(i32 %69)
  store i32* %70, i32** %23, align 8
  %71 = load i32*, i32** %23, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %38
  br label %234

74:                                               ; preds = %38
  %75 = load i32*, i32** %23, align 8
  store i32* %75, i32** %25, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %74
  store i32 0, i32* %21, align 4
  br label %79

79:                                               ; preds = %93, %78
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %21, align 4
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %12, align 8
  %88 = urem i64 %86, %87
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %25, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %25, align 8
  store i32 %90, i32* %91, align 4
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %21, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %21, align 4
  br label %79

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96, %74
  %98 = load i64, i64* %10, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %97
  store i32 0, i32* %21, align 4
  br label %101

101:                                              ; preds = %115, %100
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %20, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %21, align 4
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %10, align 8
  %110 = urem i64 %108, %109
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %25, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %25, align 8
  store i32 %112, i32* %113, align 4
  br label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %21, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %21, align 4
  br label %101

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118, %97
  %120 = load i32, i32* %18, align 4
  %121 = call i32* @os_malloc(i32 %120)
  store i32* %121, i32** %24, align 8
  %122 = load i32*, i32** %24, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  br label %234

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %233, %125
  %127 = load i32, i32* @SHA1_MAC_LEN, align 4
  %128 = zext i32 %127 to i64
  %129 = call i8* @llvm.stacksave()
  store i8* %129, i8** %27, align 8
  %130 = alloca i32, i64 %128, align 16
  store i64 %128, i64* %28, align 8
  %131 = load i32*, i32** %22, align 8
  %132 = getelementptr inbounds [2 x i32*], [2 x i32*]* %29, i64 0, i64 0
  store i32* %131, i32** %132, align 16
  %133 = load i32, i32* %18, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [2 x i64], [2 x i64]* %30, i64 0, i64 0
  store i64 %134, i64* %135, align 16
  %136 = load i32*, i32** %23, align 8
  %137 = getelementptr inbounds [2 x i32*], [2 x i32*]* %29, i64 0, i64 1
  store i32* %136, i32** %137, align 8
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %20, align 4
  %140 = add i32 %138, %139
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [2 x i64], [2 x i64]* %30, i64 0, i64 1
  store i64 %141, i64* %142, align 8
  %143 = getelementptr inbounds [2 x i32*], [2 x i32*]* %29, i64 0, i64 0
  %144 = getelementptr inbounds [2 x i64], [2 x i64]* %30, i64 0, i64 0
  %145 = call i64 @sha1_vector(i32 2, i32** %143, i64* %144, i32* %130)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %126
  store i32 2, i32* %31, align 4
  br label %230

148:                                              ; preds = %126
  %149 = getelementptr inbounds [2 x i32*], [2 x i32*]* %29, i64 0, i64 0
  store i32* %130, i32** %149, align 16
  %150 = load i32, i32* @SHA1_MAC_LEN, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [2 x i64], [2 x i64]* %30, i64 0, i64 0
  store i64 %151, i64* %152, align 16
  store i32 1, i32* %21, align 4
  br label %153

153:                                              ; preds = %164, %148
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %153
  %158 = getelementptr inbounds [2 x i32*], [2 x i32*]* %29, i64 0, i64 0
  %159 = getelementptr inbounds [2 x i64], [2 x i64]* %30, i64 0, i64 0
  %160 = call i64 @sha1_vector(i32 1, i32** %158, i64* %159, i32* %130)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store i32 2, i32* %31, align 4
  br label %230

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %21, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %21, align 4
  br label %153

167:                                              ; preds = %153
  %168 = load i64, i64* %15, align 8
  %169 = load i32, i32* %17, align 4
  %170 = zext i32 %169 to i64
  %171 = icmp ule i64 %168, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i32*, i32** %16, align 8
  %174 = load i64, i64* %15, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @os_memcpy(i32* %173, i32* %130, i32 %175)
  store i32 0, i32* %26, align 4
  store i32 2, i32* %31, align 4
  br label %230

177:                                              ; preds = %167
  %178 = load i32*, i32** %16, align 8
  %179 = load i32, i32* %17, align 4
  %180 = call i32 @os_memcpy(i32* %178, i32* %130, i32 %179)
  %181 = load i32, i32* %17, align 4
  %182 = load i32*, i32** %16, align 8
  %183 = zext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %16, align 8
  %185 = load i32, i32* %17, align 4
  %186 = zext i32 %185 to i64
  %187 = load i64, i64* %15, align 8
  %188 = sub i64 %187, %186
  store i64 %188, i64* %15, align 8
  store i32 0, i32* %21, align 4
  br label %189

189:                                              ; preds = %204, %177
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %18, align 4
  %192 = icmp ult i32 %190, %191
  br i1 %192, label %193, label %207

193:                                              ; preds = %189
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* %17, align 4
  %196 = urem i32 %194, %195
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %130, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %24, align 8
  %201 = load i32, i32* %21, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %199, i32* %203, align 4
  br label %204

204:                                              ; preds = %193
  %205 = load i32, i32* %21, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %21, align 4
  br label %189

207:                                              ; preds = %189
  %208 = load i32*, i32** %24, align 8
  %209 = load i32, i32* %18, align 4
  %210 = call i32 @inc_byte_array(i32* %208, i32 %209)
  store i32 0, i32* %21, align 4
  br label %211

211:                                              ; preds = %225, %207
  %212 = load i32, i32* %21, align 4
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %20, align 4
  %215 = add i32 %213, %214
  %216 = icmp ult i32 %212, %215
  br i1 %216, label %217, label %229

217:                                              ; preds = %211
  %218 = load i32*, i32** %23, align 8
  %219 = load i32, i32* %21, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32*, i32** %24, align 8
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @add_byte_array_mod(i32* %221, i32* %222, i32 %223)
  br label %225

225:                                              ; preds = %217
  %226 = load i32, i32* %18, align 4
  %227 = load i32, i32* %21, align 4
  %228 = add i32 %227, %226
  store i32 %228, i32* %21, align 4
  br label %211

229:                                              ; preds = %211
  store i32 0, i32* %31, align 4
  br label %230

230:                                              ; preds = %172, %162, %147, %229
  %231 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %31, align 4
  switch i32 %232, label %242 [
    i32 0, label %233
    i32 2, label %234
  ]

233:                                              ; preds = %230
  br label %126

234:                                              ; preds = %230, %124, %73, %37
  %235 = load i32*, i32** %24, align 8
  %236 = call i32 @os_free(i32* %235)
  %237 = load i32*, i32** %23, align 8
  %238 = call i32 @os_free(i32* %237)
  %239 = load i32*, i32** %22, align 8
  %240 = call i32 @os_free(i32* %239)
  %241 = load i32, i32* %26, align 4
  ret i32 %241

242:                                              ; preds = %230
  unreachable
}

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @sha1_vector(i32, i32**, i64*, i32*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @inc_byte_array(i32*, i32) #1

declare dso_local i32 @add_byte_array_mod(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
