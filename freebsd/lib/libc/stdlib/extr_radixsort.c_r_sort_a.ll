; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_radixsort.c_r_sort_a.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_radixsort.c_r_sort_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@r_sort_a.count = internal global [256 x i32] zeroinitializer, align 16
@r_sort_a.nc = internal global i32 0, align 4
@r_sort_a.bmin = internal global i32 0, align 4
@SIZE = common dso_local global i32 0, align 4
@THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64**, i32, i32, i64*, i32)* @r_sort_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_sort_a(i64** %0, i32 %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64**, align 8
  %17 = alloca i64**, align 8
  %18 = alloca i64**, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64**, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64**, align 8
  %25 = alloca [256 x i64**], align 16
  store i64** %0, i64*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %26 = load i32, i32* @SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %14, align 8
  %29 = alloca i64*, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  store i64** %29, i64*** %16, align 8
  %30 = load i64**, i64*** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @push(i64** %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %249, %124, %107, %46, %5
  %35 = call i32 @empty(i64** %29)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %250

38:                                               ; preds = %34
  %39 = load i64**, i64*** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @pop(i64** %39, i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @THRESHOLD, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i64**, i64*** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i64*, i64** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @simplesort(i64** %47, i32 %48, i32 %49, i64* %50, i32 %51)
  br label %34

53:                                               ; preds = %38
  %54 = load i64**, i64*** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64*, i64** %54, i64 %56
  store i64** %57, i64*** %22, align 8
  %58 = load i32, i32* @r_sort_a.nc, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %53
  store i32 255, i32* @r_sort_a.bmin, align 4
  %61 = load i64**, i64*** %6, align 8
  store i64** %61, i64*** %12, align 8
  br label %62

62:                                               ; preds = %97, %60
  %63 = load i64**, i64*** %12, align 8
  %64 = load i64**, i64*** %22, align 8
  %65 = icmp ult i64** %63, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %62
  %67 = load i64*, i64** %9, align 8
  %68 = load i64**, i64*** %12, align 8
  %69 = getelementptr inbounds i64*, i64** %68, i32 1
  store i64** %69, i64*** %12, align 8
  %70 = load i64*, i64** %68, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %67, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* @r_sort_a.count, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %97

84:                                               ; preds = %66
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @r_sort_a.bmin, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* @r_sort_a.bmin, align 4
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i32, i32* @r_sort_a.nc, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @r_sort_a.nc, align 4
  br label %97

97:                                               ; preds = %94, %84, %66
  br label %62

98:                                               ; preds = %62
  %99 = load i64**, i64*** %16, align 8
  %100 = load i32, i32* @r_sort_a.nc, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64*, i64** %99, i64 %101
  %103 = load i32, i32* @SIZE, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64*, i64** %29, i64 %104
  %106 = icmp ugt i64** %102, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load i64**, i64*** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i64*, i64** %9, align 8
  %112 = load i32, i32* %10, align 4
  call void @r_sort_a(i64** %108, i32 %109, i32 %110, i64* %111, i32 %112)
  br label %34

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113, %53
  %115 = load i32, i32* @r_sort_a.nc, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = load i32, i32* @r_sort_a.bmin, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [256 x i32], [256 x i32]* @r_sort_a.count, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %117
  %125 = load i64**, i64*** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i32 @push(i64** %125, i32 %126, i32 %128)
  %130 = load i32, i32* @r_sort_a.bmin, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [256 x i32], [256 x i32]* @r_sort_a.count, i64 0, i64 %131
  store i32 0, i32* %132, align 4
  store i32 0, i32* @r_sort_a.nc, align 4
  br label %34

133:                                              ; preds = %117, %114
  %134 = load i64**, i64*** %16, align 8
  store i64** %134, i64*** %18, align 8
  store i64** %134, i64*** %17, align 8
  store i32 2, i32* %21, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i64**, i64*** %6, align 8
  %139 = load i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @r_sort_a.count, i64 0, i64 0), align 16
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64*, i64** %138, i64 %140
  store i64** %141, i64*** %12, align 8
  %142 = getelementptr inbounds [256 x i64**], [256 x i64**]* %25, i64 0, i64 0
  store i64** %141, i64*** %142, align 16
  br label %147

143:                                              ; preds = %133
  %144 = load i64**, i64*** %6, align 8
  store i64** %144, i64*** %12, align 8
  %145 = load i64**, i64*** %22, align 8
  %146 = getelementptr inbounds [256 x i64**], [256 x i64**]* %25, i64 0, i64 255
  store i64** %145, i64*** %146, align 8
  br label %147

147:                                              ; preds = %143, %137
  %148 = load i32, i32* @r_sort_a.bmin, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @r_sort_a.count, i64 0, i64 0), i64 %149
  store i32* %150, i32** %20, align 8
  br label %151

151:                                              ; preds = %195, %147
  %152 = load i32, i32* @r_sort_a.nc, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %198

154:                                              ; preds = %151
  br label %155

155:                                              ; preds = %159, %154
  %156 = load i32*, i32** %20, align 8
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32*, i32** %20, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %20, align 8
  br label %155

162:                                              ; preds = %155
  %163 = load i32*, i32** %20, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 1
  br i1 %165, label %166, label %182

166:                                              ; preds = %162
  %167 = load i32*, i32** %20, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %21, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32*, i32** %20, align 8
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %21, align 4
  %174 = load i64**, i64*** %16, align 8
  store i64** %174, i64*** %18, align 8
  br label %175

175:                                              ; preds = %171, %166
  %176 = load i64**, i64*** %12, align 8
  %177 = load i32*, i32** %20, align 8
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  %181 = call i32 @push(i64** %176, i32 %178, i32 %180)
  br label %182

182:                                              ; preds = %175, %162
  %183 = load i32*, i32** %20, align 8
  %184 = load i32, i32* %183, align 4
  %185 = load i64**, i64*** %12, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i64*, i64** %185, i64 %186
  store i64** %187, i64*** %12, align 8
  %188 = load i32*, i32** %20, align 8
  %189 = ptrtoint i32* %188 to i64
  %190 = sub i64 %189, ptrtoint ([256 x i32]* @r_sort_a.count to i64)
  %191 = sdiv exact i64 %190, 4
  %192 = getelementptr inbounds [256 x i64**], [256 x i64**]* %25, i64 0, i64 %191
  store i64** %187, i64*** %192, align 8
  %193 = load i32, i32* @r_sort_a.nc, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* @r_sort_a.nc, align 4
  br label %195

195:                                              ; preds = %182
  %196 = load i32*, i32** %20, align 8
  %197 = getelementptr inbounds i32, i32* %196, i32 1
  store i32* %197, i32** %20, align 8
  br label %151

198:                                              ; preds = %151
  %199 = load i64**, i64*** %17, align 8
  %200 = load i64*, i64** %199, align 8
  %201 = load i64**, i64*** %18, align 8
  %202 = load i64*, i64** %201, align 8
  %203 = load i64*, i64** %19, align 8
  %204 = call i32 @swap(i64* %200, i64* %202, i64* %203)
  %205 = load i64**, i64*** %6, align 8
  store i64** %205, i64*** %24, align 8
  br label %206

206:                                              ; preds = %236, %198
  %207 = load i64**, i64*** %24, align 8
  %208 = load i64**, i64*** %22, align 8
  %209 = icmp ult i64** %207, %208
  br i1 %209, label %210, label %249

210:                                              ; preds = %206
  %211 = load i64**, i64*** %24, align 8
  %212 = load i64*, i64** %211, align 8
  store i64* %212, i64** %13, align 8
  br label %213

213:                                              ; preds = %229, %210
  %214 = load i64**, i64*** %24, align 8
  %215 = load i64*, i64** %9, align 8
  %216 = load i64*, i64** %13, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds i64, i64* %215, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [256 x i64**], [256 x i64**]* %25, i64 0, i64 %224
  %226 = load i64**, i64*** %225, align 8
  %227 = getelementptr inbounds i64*, i64** %226, i32 -1
  store i64** %227, i64*** %225, align 8
  store i64** %227, i64*** %12, align 8
  %228 = icmp ult i64** %214, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %213
  %230 = load i64**, i64*** %12, align 8
  %231 = load i64*, i64** %230, align 8
  %232 = load i64*, i64** %13, align 8
  %233 = load i64*, i64** %23, align 8
  %234 = call i32 @swap(i64* %231, i64* %232, i64* %233)
  br label %213

235:                                              ; preds = %213
  br label %236

236:                                              ; preds = %235
  %237 = load i64*, i64** %13, align 8
  %238 = load i64**, i64*** %24, align 8
  store i64* %237, i64** %238, align 8
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [256 x i32], [256 x i32]* @r_sort_a.count, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i64**, i64*** %24, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i64*, i64** %243, i64 %244
  store i64** %245, i64*** %24, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [256 x i32], [256 x i32]* @r_sort_a.count, i64 0, i64 %247
  store i32 0, i32* %248, align 4
  br label %206

249:                                              ; preds = %206
  br label %34

250:                                              ; preds = %34
  %251 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %251)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @push(i64**, i32, i32) #2

declare dso_local i32 @empty(i64**) #2

declare dso_local i32 @pop(i64**, i32, i32) #2

declare dso_local i32 @simplesort(i64**, i32, i32, i64*, i32) #2

declare dso_local i32 @swap(i64*, i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
