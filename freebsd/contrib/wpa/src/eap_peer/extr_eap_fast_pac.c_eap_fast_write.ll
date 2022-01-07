; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s-txt=\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i64*, i8*, i32*, i64, i32)* @eap_fast_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_fast_write(i8** %0, i8** %1, i64* %2, i8* %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %7
  %23 = load i8**, i8*** %8, align 8
  %24 = icmp eq i8** %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load i8**, i8*** %8, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = load i8**, i8*** %9, align 8
  %31 = icmp eq i8** %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = load i8**, i8*** %9, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i8**, i8*** %9, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ult i8* %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %32, %29, %25, %22, %7
  br label %280

43:                                               ; preds = %36
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @os_strlen(i8* %44)
  %46 = load i64, i64* %13, align 8
  %47 = mul i64 %46, 2
  %48 = add i64 %45, %47
  %49 = add i64 %48, 30
  store i64 %49, i64* %16, align 8
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load i8*, i8** %11, align 8
  %54 = call i64 @os_strlen(i8* %53)
  %55 = load i64, i64* %13, align 8
  %56 = add i64 %54, %55
  %57 = add i64 %56, 20
  %58 = load i64, i64* %16, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %16, align 8
  br label %60

60:                                               ; preds = %52, %43
  %61 = load i8**, i8*** %9, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %8, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %62 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = load i64, i64* %16, align 8
  %69 = add i64 %67, %68
  %70 = load i64*, i64** %10, align 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ugt i64 %69, %71
  br i1 %72, label %73, label %105

73:                                               ; preds = %60
  %74 = load i8**, i8*** %8, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i64*, i64** %10, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %16, align 8
  %79 = add i64 %77, %78
  %80 = call i8* @os_realloc(i8* %75, i64 %79)
  store i8* %80, i8** %19, align 8
  %81 = load i8*, i8** %19, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load i8**, i8*** %8, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @os_free(i8* %85)
  %87 = load i8**, i8*** %8, align 8
  store i8* null, i8** %87, align 8
  br label %280

88:                                               ; preds = %73
  %89 = load i8*, i8** %19, align 8
  %90 = load i8**, i8*** %9, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = load i8**, i8*** %8, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = ptrtoint i8* %91 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = getelementptr inbounds i8, i8* %89, i64 %96
  %98 = load i8**, i8*** %9, align 8
  store i8* %97, i8** %98, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = load i8**, i8*** %8, align 8
  store i8* %99, i8** %100, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load i64*, i64** %10, align 8
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, %101
  store i64 %104, i64* %102, align 8
  br label %105

105:                                              ; preds = %88, %60
  %106 = load i8**, i8*** %8, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i64*, i64** %10, align 8
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8* %110, i8** %18, align 8
  %111 = load i8**, i8*** %9, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = load i8**, i8*** %9, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = ptrtoint i8* %113 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %112, i32 %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %120)
  store i32 %121, i32* %17, align 4
  %122 = load i8*, i8** %18, align 8
  %123 = load i8**, i8*** %9, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %122 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* %17, align 4
  %130 = call i64 @os_snprintf_error(i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %105
  br label %280

133:                                              ; preds = %105
  %134 = load i32, i32* %17, align 4
  %135 = load i8**, i8*** %9, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = sext i32 %134 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %135, align 8
  %139 = load i8**, i8*** %9, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = load i8*, i8** %18, align 8
  %142 = load i8**, i8*** %9, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = ptrtoint i8* %141 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = trunc i64 %146 to i32
  %148 = load i32*, i32** %12, align 8
  %149 = load i64, i64* %13, align 8
  %150 = call i32 @wpa_snprintf_hex(i8* %140, i32 %147, i32* %148, i64 %149)
  %151 = load i8**, i8*** %9, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = sext i32 %150 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %151, align 8
  %155 = load i8**, i8*** %9, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = load i8*, i8** %18, align 8
  %158 = load i8**, i8*** %9, align 8
  %159 = load i8*, i8** %158, align 8
  %160 = ptrtoint i8* %157 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = trunc i64 %162 to i32
  %164 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %156, i32 %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %164, i32* %17, align 4
  %165 = load i8*, i8** %18, align 8
  %166 = load i8**, i8*** %9, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = ptrtoint i8* %165 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = trunc i64 %170 to i32
  %172 = load i32, i32* %17, align 4
  %173 = call i64 @os_snprintf_error(i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %133
  br label %280

176:                                              ; preds = %133
  %177 = load i32, i32* %17, align 4
  %178 = load i8**, i8*** %9, align 8
  %179 = load i8*, i8** %178, align 8
  %180 = sext i32 %177 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %178, align 8
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %280

184:                                              ; preds = %176
  %185 = load i8**, i8*** %9, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = load i8*, i8** %18, align 8
  %188 = load i8**, i8*** %9, align 8
  %189 = load i8*, i8** %188, align 8
  %190 = ptrtoint i8* %187 to i64
  %191 = ptrtoint i8* %189 to i64
  %192 = sub i64 %190, %191
  %193 = trunc i64 %192 to i32
  %194 = load i8*, i8** %11, align 8
  %195 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %186, i32 %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %194)
  store i32 %195, i32* %17, align 4
  %196 = load i8*, i8** %18, align 8
  %197 = load i8**, i8*** %9, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = ptrtoint i8* %196 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  %203 = load i32, i32* %17, align 4
  %204 = call i64 @os_snprintf_error(i32 %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %184
  br label %280

207:                                              ; preds = %184
  %208 = load i32, i32* %17, align 4
  %209 = load i8**, i8*** %9, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = sext i32 %208 to i64
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8* %212, i8** %209, align 8
  store i64 0, i64* %15, align 8
  br label %213

213:                                              ; preds = %249, %207
  %214 = load i64, i64* %15, align 8
  %215 = load i64, i64* %13, align 8
  %216 = icmp ult i64 %214, %215
  br i1 %216, label %217, label %252

217:                                              ; preds = %213
  %218 = load i8**, i8*** %9, align 8
  %219 = load i8*, i8** %218, align 8
  %220 = load i8*, i8** %18, align 8
  %221 = load i8**, i8*** %9, align 8
  %222 = load i8*, i8** %221, align 8
  %223 = ptrtoint i8* %220 to i64
  %224 = ptrtoint i8* %222 to i64
  %225 = sub i64 %223, %224
  %226 = trunc i64 %225 to i32
  %227 = load i32*, i32** %12, align 8
  %228 = load i64, i64* %15, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %219, i32 %226, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %230)
  store i32 %231, i32* %17, align 4
  %232 = load i8*, i8** %18, align 8
  %233 = load i8**, i8*** %9, align 8
  %234 = load i8*, i8** %233, align 8
  %235 = ptrtoint i8* %232 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = trunc i64 %237 to i32
  %239 = load i32, i32* %17, align 4
  %240 = call i64 @os_snprintf_error(i32 %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %217
  br label %280

243:                                              ; preds = %217
  %244 = load i32, i32* %17, align 4
  %245 = load i8**, i8*** %9, align 8
  %246 = load i8*, i8** %245, align 8
  %247 = sext i32 %244 to i64
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8* %248, i8** %245, align 8
  br label %249

249:                                              ; preds = %243
  %250 = load i64, i64* %15, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %15, align 8
  br label %213

252:                                              ; preds = %213
  %253 = load i8**, i8*** %9, align 8
  %254 = load i8*, i8** %253, align 8
  %255 = load i8*, i8** %18, align 8
  %256 = load i8**, i8*** %9, align 8
  %257 = load i8*, i8** %256, align 8
  %258 = ptrtoint i8* %255 to i64
  %259 = ptrtoint i8* %257 to i64
  %260 = sub i64 %258, %259
  %261 = trunc i64 %260 to i32
  %262 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %254, i32 %261, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %262, i32* %17, align 4
  %263 = load i8*, i8** %18, align 8
  %264 = load i8**, i8*** %9, align 8
  %265 = load i8*, i8** %264, align 8
  %266 = ptrtoint i8* %263 to i64
  %267 = ptrtoint i8* %265 to i64
  %268 = sub i64 %266, %267
  %269 = trunc i64 %268 to i32
  %270 = load i32, i32* %17, align 4
  %271 = call i64 @os_snprintf_error(i32 %269, i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %252
  br label %280

274:                                              ; preds = %252
  %275 = load i32, i32* %17, align 4
  %276 = load i8**, i8*** %9, align 8
  %277 = load i8*, i8** %276, align 8
  %278 = sext i32 %275 to i64
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  store i8* %279, i8** %276, align 8
  br label %280

280:                                              ; preds = %42, %83, %132, %175, %206, %242, %273, %274, %176
  ret void
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i8* @os_realloc(i8*, i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
