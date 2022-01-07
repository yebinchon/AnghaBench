; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_radixsort.c_r_sort_b.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_radixsort.c_r_sort_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@r_sort_b.count = internal global [256 x i32] zeroinitializer, align 16
@r_sort_b.nc = internal global i32 0, align 4
@r_sort_b.bmin = internal global i32 0, align 4
@THRESHOLD = common dso_local global i32 0, align 4
@SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64**, i64**, i32, i32, i64*, i32)* @r_sort_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_sort_b(i64** %0, i64** %1, i32 %2, i32 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i64**, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64**, align 8
  %15 = alloca i64**, align 8
  %16 = alloca [512 x i32], align 16
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [256 x i64**], align 16
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i64** %0, i64*** %7, align 8
  store i64** %1, i64*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %24 = getelementptr inbounds [512 x i32], [512 x i32]* %16, i64 0, i64 0
  store i32* %24, i32** %17, align 8
  %25 = load i64**, i64*** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @push(i64** %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %226, %103, %42, %6
  %30 = getelementptr inbounds [512 x i32], [512 x i32]* %16, i64 0, i64 0
  %31 = call i32 @empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %227

34:                                               ; preds = %29
  %35 = load i64**, i64*** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @pop(i64** %35, i32 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @THRESHOLD, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load i64**, i64*** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i64*, i64** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @simplesort(i64** %43, i32 %44, i32 %45, i64* %46, i32 %47)
  br label %29

49:                                               ; preds = %34
  %50 = load i32, i32* @r_sort_b.nc, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %111

52:                                               ; preds = %49
  store i32 255, i32* @r_sort_b.bmin, align 4
  %53 = load i64**, i64*** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64*, i64** %53, i64 %55
  store i64** %56, i64*** %14, align 8
  br label %57

57:                                               ; preds = %92, %52
  %58 = load i64**, i64*** %14, align 8
  %59 = getelementptr inbounds i64*, i64** %58, i32 -1
  store i64** %59, i64*** %14, align 8
  %60 = load i64**, i64*** %7, align 8
  %61 = icmp uge i64** %59, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %57
  %63 = load i64*, i64** %11, align 8
  %64 = load i64**, i64*** %14, align 8
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i64, i64* %63, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [256 x i32], [256 x i32]* @r_sort_b.count, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %92

79:                                               ; preds = %62
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @r_sort_b.bmin, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* @r_sort_b.bmin, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* @r_sort_b.nc, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @r_sort_b.nc, align 4
  br label %92

92:                                               ; preds = %89, %79, %62
  br label %57

93:                                               ; preds = %57
  %94 = load i32*, i32** %17, align 8
  %95 = load i32, i32* @r_sort_b.nc, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = getelementptr inbounds [512 x i32], [512 x i32]* %16, i64 0, i64 0
  %99 = load i32, i32* @SIZE, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = icmp ugt i32* %97, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %93
  %104 = load i64**, i64*** %7, align 8
  %105 = load i64**, i64*** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i64*, i64** %11, align 8
  %109 = load i32, i32* %12, align 4
  call void @r_sort_b(i64** %104, i64** %105, i32 %106, i32 %107, i64* %108, i32 %109)
  br label %29

110:                                              ; preds = %93
  br label %111

111:                                              ; preds = %110, %49
  %112 = load i32*, i32** %17, align 8
  store i32* %112, i32** %19, align 8
  store i32* %112, i32** %18, align 8
  store i32 2, i32* %23, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i64**, i64*** %7, align 8
  %117 = load i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @r_sort_b.count, i64 0, i64 0), align 16
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64*, i64** %116, i64 %118
  store i64** %119, i64*** %14, align 8
  %120 = getelementptr inbounds [256 x i64**], [256 x i64**]* %21, i64 0, i64 0
  store i64** %119, i64*** %120, align 16
  store i32 0, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @r_sort_b.count, i64 0, i64 0), align 16
  br label %128

121:                                              ; preds = %111
  %122 = load i64**, i64*** %7, align 8
  store i64** %122, i64*** %14, align 8
  %123 = load i64**, i64*** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64*, i64** %123, i64 %125
  %127 = getelementptr inbounds [256 x i64**], [256 x i64**]* %21, i64 0, i64 255
  store i64** %126, i64*** %127, align 8
  store i32 0, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @r_sort_b.count, i64 0, i64 255), align 4
  br label %128

128:                                              ; preds = %121, %115
  %129 = load i32, i32* @r_sort_b.bmin, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @r_sort_b.count, i64 0, i64 0), i64 %130
  store i32* %131, i32** %22, align 8
  br label %132

132:                                              ; preds = %173, %128
  %133 = load i32, i32* @r_sort_b.nc, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %176

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %140, %135
  %137 = load i32*, i32** %22, align 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32*, i32** %22, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %22, align 8
  br label %136

143:                                              ; preds = %136
  %144 = load i32*, i32** %22, align 8
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %13, align 4
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %160

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %23, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %23, align 4
  %153 = load i32*, i32** %17, align 8
  store i32* %153, i32** %19, align 8
  br label %154

154:                                              ; preds = %151, %147
  %155 = load i64**, i64*** %14, align 8
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  %159 = call i32 @push(i64** %155, i32 %156, i32 %158)
  br label %160

160:                                              ; preds = %154, %143
  %161 = load i32, i32* %13, align 4
  %162 = load i64**, i64*** %14, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i64*, i64** %162, i64 %163
  store i64** %164, i64*** %14, align 8
  %165 = load i32*, i32** %22, align 8
  %166 = ptrtoint i32* %165 to i64
  %167 = sub i64 %166, ptrtoint ([256 x i32]* @r_sort_b.count to i64)
  %168 = sdiv exact i64 %167, 4
  %169 = getelementptr inbounds [256 x i64**], [256 x i64**]* %21, i64 0, i64 %168
  store i64** %164, i64*** %169, align 8
  %170 = load i32*, i32** %22, align 8
  store i32 0, i32* %170, align 4
  %171 = load i32, i32* @r_sort_b.nc, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* @r_sort_b.nc, align 4
  br label %173

173:                                              ; preds = %160
  %174 = load i32*, i32** %22, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %22, align 8
  br label %132

176:                                              ; preds = %132
  %177 = load i32*, i32** %18, align 8
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %19, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %20, align 4
  %182 = call i32 @swap(i32 %178, i32 %180, i32 %181)
  %183 = load i64**, i64*** %8, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64*, i64** %183, i64 %185
  store i64** %186, i64*** %14, align 8
  %187 = load i64**, i64*** %7, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64*, i64** %187, i64 %189
  store i64** %190, i64*** %15, align 8
  br label %191

191:                                              ; preds = %195, %176
  %192 = load i64**, i64*** %14, align 8
  %193 = load i64**, i64*** %8, align 8
  %194 = icmp ugt i64** %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = load i64**, i64*** %15, align 8
  %197 = getelementptr inbounds i64*, i64** %196, i32 -1
  store i64** %197, i64*** %15, align 8
  %198 = load i64*, i64** %197, align 8
  %199 = load i64**, i64*** %14, align 8
  %200 = getelementptr inbounds i64*, i64** %199, i32 -1
  store i64** %200, i64*** %14, align 8
  store i64* %198, i64** %200, align 8
  br label %191

201:                                              ; preds = %191
  %202 = load i64**, i64*** %8, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64*, i64** %202, i64 %204
  store i64** %205, i64*** %14, align 8
  br label %206

206:                                              ; preds = %211, %201
  %207 = load i64**, i64*** %14, align 8
  %208 = getelementptr inbounds i64*, i64** %207, i32 -1
  store i64** %208, i64*** %14, align 8
  %209 = load i64**, i64*** %8, align 8
  %210 = icmp uge i64** %208, %209
  br i1 %210, label %211, label %226

211:                                              ; preds = %206
  %212 = load i64**, i64*** %14, align 8
  %213 = load i64*, i64** %212, align 8
  %214 = load i64*, i64** %11, align 8
  %215 = load i64**, i64*** %14, align 8
  %216 = load i64*, i64** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds i64, i64* %214, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds [256 x i64**], [256 x i64**]* %21, i64 0, i64 %222
  %224 = load i64**, i64*** %223, align 8
  %225 = getelementptr inbounds i64*, i64** %224, i32 -1
  store i64** %225, i64*** %223, align 8
  store i64* %213, i64** %225, align 8
  br label %206

226:                                              ; preds = %206
  br label %29

227:                                              ; preds = %29
  ret void
}

declare dso_local i32 @push(i64**, i32, i32) #1

declare dso_local i32 @empty(i32*) #1

declare dso_local i32 @pop(i64**, i32, i32) #1

declare dso_local i32 @simplesort(i64**, i32, i32, i64*, i32) #1

declare dso_local i32 @swap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
