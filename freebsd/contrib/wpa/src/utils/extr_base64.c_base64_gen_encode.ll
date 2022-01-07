; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_base64.c_base64_gen_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_base64.c_base64_gen_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64*, i8*, i32)* @base64_gen_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @base64_gen_encode(i8* %0, i64 %1, i64* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* @SIZE_MAX, align 4
  %20 = sdiv i32 %19, 4
  %21 = sext i32 %20 to i64
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %247

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = mul i64 %25, 4
  %27 = udiv i64 %26, 3
  %28 = add i64 %27, 4
  store i64 %28, i64* %16, align 8
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i64, i64* %16, align 8
  %33 = udiv i64 %32, 72
  %34 = load i64, i64* %16, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %16, align 8
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i64, i64* %16, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %16, align 8
  %39 = load i64, i64* %16, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i8* null, i8** %6, align 8
  br label %247

43:                                               ; preds = %36
  %44 = load i64, i64* %16, align 8
  %45 = call i8* @os_malloc(i64 %44)
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i8* null, i8** %6, align 8
  br label %247

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %14, align 8
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %15, align 8
  %54 = load i8*, i8** %12, align 8
  store i8* %54, i8** %13, align 8
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %136, %49
  %56 = load i8*, i8** %14, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = icmp sge i64 %60, 3
  br i1 %61, label %62, label %137

62:                                               ; preds = %55
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = ashr i32 %67, 2
  %69 = and i32 %68, 63
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %63, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %13, align 8
  store i8 %72, i8* %73, align 1
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 3
  %81 = shl i32 %80, 4
  %82 = load i8*, i8** %15, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = ashr i32 %85, 4
  %87 = or i32 %81, %86
  %88 = and i32 %87, 63
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %75, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %13, align 8
  store i8 %91, i8* %92, align 1
  %94 = load i8*, i8** %10, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 15
  %100 = shl i32 %99, 2
  %101 = load i8*, i8** %15, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = ashr i32 %104, 6
  %106 = or i32 %100, %105
  %107 = and i32 %106, 63
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %94, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %13, align 8
  store i8 %110, i8* %111, align 1
  %113 = load i8*, i8** %10, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 63
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %113, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %13, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %13, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i8*, i8** %15, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 3
  store i8* %125, i8** %15, align 8
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 4
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %62
  %131 = load i32, i32* %17, align 4
  %132 = icmp sge i32 %131, 72
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i8*, i8** %13, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %13, align 8
  store i8 10, i8* %134, align 1
  store i32 0, i32* %17, align 4
  br label %136

136:                                              ; preds = %133, %130, %62
  br label %55

137:                                              ; preds = %55
  %138 = load i8*, i8** %14, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %225

144:                                              ; preds = %137
  %145 = load i8*, i8** %10, align 8
  %146 = load i8*, i8** %15, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = ashr i32 %149, 2
  %151 = and i32 %150, 63
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %145, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = load i8*, i8** %13, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %13, align 8
  store i8 %154, i8* %155, align 1
  %157 = load i8*, i8** %14, align 8
  %158 = load i8*, i8** %15, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = icmp eq i64 %161, 1
  br i1 %162, label %163, label %183

163:                                              ; preds = %144
  %164 = load i8*, i8** %10, align 8
  %165 = load i8*, i8** %15, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = and i32 %168, 3
  %170 = shl i32 %169, 4
  %171 = and i32 %170, 63
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %164, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = load i8*, i8** %13, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %13, align 8
  store i8 %174, i8* %175, align 1
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %163
  %180 = load i8*, i8** %13, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %13, align 8
  store i8 61, i8* %180, align 1
  br label %182

182:                                              ; preds = %179, %163
  br label %216

183:                                              ; preds = %144
  %184 = load i8*, i8** %10, align 8
  %185 = load i8*, i8** %15, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = and i32 %188, 3
  %190 = shl i32 %189, 4
  %191 = load i8*, i8** %15, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = ashr i32 %194, 4
  %196 = or i32 %190, %195
  %197 = and i32 %196, 63
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %184, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = load i8*, i8** %13, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %13, align 8
  store i8 %200, i8* %201, align 1
  %203 = load i8*, i8** %10, align 8
  %204 = load i8*, i8** %15, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = and i32 %207, 15
  %209 = shl i32 %208, 2
  %210 = and i32 %209, 63
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %203, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = load i8*, i8** %13, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %13, align 8
  store i8 %213, i8* %214, align 1
  br label %216

216:                                              ; preds = %183, %182
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i8*, i8** %13, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %13, align 8
  store i8 61, i8* %220, align 1
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i32, i32* %17, align 4
  %224 = add nsw i32 %223, 4
  store i32 %224, i32* %17, align 4
  br label %225

225:                                              ; preds = %222, %137
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %225
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i8*, i8** %13, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %13, align 8
  store i8 10, i8* %232, align 1
  br label %234

234:                                              ; preds = %231, %228, %225
  %235 = load i8*, i8** %13, align 8
  store i8 0, i8* %235, align 1
  %236 = load i64*, i64** %9, align 8
  %237 = icmp ne i64* %236, null
  br i1 %237, label %238, label %245

238:                                              ; preds = %234
  %239 = load i8*, i8** %13, align 8
  %240 = load i8*, i8** %12, align 8
  %241 = ptrtoint i8* %239 to i64
  %242 = ptrtoint i8* %240 to i64
  %243 = sub i64 %241, %242
  %244 = load i64*, i64** %9, align 8
  store i64 %243, i64* %244, align 8
  br label %245

245:                                              ; preds = %238, %234
  %246 = load i8*, i8** %12, align 8
  store i8* %246, i8** %6, align 8
  br label %247

247:                                              ; preds = %245, %48, %42, %23
  %248 = load i8*, i8** %6, align 8
  ret i8* %248
}

declare dso_local i8* @os_malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
