; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_gc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_hs = type { i32, i64 (i8*, i32)*, %struct.TYPE_2__*, i32, %struct.ck_hs_map* }
%struct.TYPE_2__ = type { i64* (i64)*, i32 (i64*, i64, i32)* }
%struct.ck_hs_map = type { i64, i32, i64*, i32, i8**, i64 }

@CK_HS_EMPTY = common dso_local global i8* null, align 8
@CK_HS_TOMBSTONE = common dso_local global i8* null, align 8
@CK_HS_PROBE = common dso_local global i32 0, align 4
@CK_HS_WORD_MAX = common dso_local global i64 0, align 8
@CK_HS_MODE_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_hs_gc(%struct.ck_hs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ck_hs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ck_hs_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store %struct.ck_hs* %0, %struct.ck_hs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %21 = load %struct.ck_hs*, %struct.ck_hs** %5, align 8
  %22 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %21, i32 0, i32 4
  %23 = load %struct.ck_hs_map*, %struct.ck_hs_map** %22, align 8
  store %struct.ck_hs_map* %23, %struct.ck_hs_map** %10, align 8
  store i64* null, i64** %12, align 8
  %24 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %25 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %3
  %29 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %30 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %29, i32 0, i32 1
  %31 = call i32 @ck_pr_store_uint(i32* %30, i32 0)
  %32 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %33 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %38 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %41 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = mul i64 8, %43
  %45 = call i32 @memset(i64* %39, i32 0, i64 %44)
  br label %46

46:                                               ; preds = %36, %28
  store i32 1, i32* %4, align 4
  br label %239

47:                                               ; preds = %3
  %48 = load i64, i64* %6, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  %51 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %52 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %57 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  store i64 %60, i64* %8, align 8
  %61 = load %struct.ck_hs*, %struct.ck_hs** %5, align 8
  %62 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64* (i64)*, i64* (i64)** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i64* %65(i64 %66)
  store i64* %67, i64** %12, align 8
  %68 = load i64*, i64** %12, align 8
  %69 = icmp eq i64* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %239

71:                                               ; preds = %55
  %72 = load i64*, i64** %12, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @memset(i64* %72, i32 0, i64 %73)
  br label %75

75:                                               ; preds = %71, %50
  br label %80

76:                                               ; preds = %47
  %77 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %78 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %75
  store i64 0, i64* %9, align 8
  br label %81

81:                                               ; preds = %190, %80
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %84 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = icmp ult i64 %82, %86
  br i1 %87, label %88, label %193

88:                                               ; preds = %81
  %89 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %90 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %89, i32 0, i32 4
  %91 = load i8**, i8*** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %92, %93
  %95 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %96 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = and i64 %94, %97
  %99 = getelementptr inbounds i8*, i8** %91, i64 %98
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %16, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = load i8*, i8** @CK_HS_EMPTY, align 8
  %103 = icmp eq i8* %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %88
  %105 = load i8*, i8** %16, align 8
  %106 = load i8*, i8** @CK_HS_TOMBSTONE, align 8
  %107 = icmp eq i8* %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %88
  br label %190

109:                                              ; preds = %104
  %110 = load %struct.ck_hs*, %struct.ck_hs** %5, align 8
  %111 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %110, i32 0, i32 1
  %112 = load i64 (i8*, i32)*, i64 (i8*, i32)** %111, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = load %struct.ck_hs*, %struct.ck_hs** %5, align 8
  %115 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i64 %112(i8* %113, i32 %116)
  store i64 %117, i64* %19, align 8
  %118 = load i64, i64* %19, align 8
  %119 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %120 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = and i64 %118, %121
  store i64 %122, i64* %18, align 8
  %123 = load %struct.ck_hs*, %struct.ck_hs** %5, align 8
  %124 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %128 = load i64, i64* %19, align 8
  %129 = call i32 @ck_hs_map_bound_get(%struct.ck_hs_map* %127, i64 %128)
  %130 = load i32, i32* @CK_HS_PROBE, align 4
  %131 = call i8** @ck_hs_map_probe(%struct.ck_hs* %123, %struct.ck_hs_map* %124, i64* %17, i8*** %13, i64 %125, i8* %126, i8** %14, i32 %129, i32 %130)
  store i8** %131, i8*** %15, align 8
  %132 = load i8**, i8*** %13, align 8
  %133 = icmp ne i8** %132, null
  br i1 %133, label %134, label %150

134:                                              ; preds = %109
  %135 = load %struct.ck_hs*, %struct.ck_hs** %5, align 8
  %136 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i8*, i8** %16, align 8
  %139 = load i64, i64* %19, align 8
  %140 = call i8* @ck_hs_marshal(i32 %137, i8* %138, i64 %139)
  store i8* %140, i8** %20, align 8
  %141 = load i8**, i8*** %13, align 8
  %142 = load i8*, i8** %20, align 8
  %143 = call i32 @ck_pr_store_ptr(i8** %141, i8* %142)
  %144 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %145 = load i64, i64* %19, align 8
  %146 = call i32 @ck_hs_map_signal(%struct.ck_hs_map* %144, i64 %145)
  %147 = load i8**, i8*** %15, align 8
  %148 = load i8*, i8** @CK_HS_TOMBSTONE, align 8
  %149 = call i32 @ck_pr_store_ptr(i8** %147, i8* %148)
  br label %150

150:                                              ; preds = %134, %109
  %151 = load i64, i64* %6, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %183

153:                                              ; preds = %150
  %154 = load i64, i64* %17, align 8
  %155 = load i32, i32* %11, align 4
  %156 = zext i32 %155 to i64
  %157 = icmp ugt i64 %154, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i64, i64* %17, align 8
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %158, %153
  %162 = load i64, i64* %17, align 8
  %163 = load i64, i64* @CK_HS_WORD_MAX, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i64, i64* @CK_HS_WORD_MAX, align 8
  store i64 %166, i64* %17, align 8
  br label %167

167:                                              ; preds = %165, %161
  %168 = load i64*, i64** %12, align 8
  %169 = icmp ne i64* %168, null
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load i64, i64* %17, align 8
  %172 = load i64*, i64** %12, align 8
  %173 = load i64, i64* %18, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = icmp ugt i64 %171, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load i64, i64* %17, align 8
  %179 = load i64*, i64** %12, align 8
  %180 = load i64, i64* %18, align 8
  %181 = getelementptr inbounds i64, i64* %179, i64 %180
  store i64 %178, i64* %181, align 8
  br label %182

182:                                              ; preds = %177, %170, %167
  br label %189

183:                                              ; preds = %150
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, -1
  store i64 %185, i64* %6, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %193

188:                                              ; preds = %183
  br label %189

189:                                              ; preds = %188, %182
  br label %190

190:                                              ; preds = %189, %108
  %191 = load i64, i64* %9, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %9, align 8
  br label %81

193:                                              ; preds = %187, %81
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %196 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %194, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %201 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %200, i32 0, i32 1
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @ck_pr_store_uint(i32* %201, i32 %202)
  br label %204

204:                                              ; preds = %199, %193
  %205 = load i64*, i64** %12, align 8
  %206 = icmp ne i64* %205, null
  br i1 %206, label %207, label %238

207:                                              ; preds = %204
  store i64 0, i64* %9, align 8
  br label %208

208:                                              ; preds = %226, %207
  %209 = load i64, i64* %9, align 8
  %210 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %211 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = icmp ult i64 %209, %213
  br i1 %214, label %215, label %229

215:                                              ; preds = %208
  %216 = load %struct.ck_hs_map*, %struct.ck_hs_map** %10, align 8
  %217 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %216, i32 0, i32 2
  %218 = load i64*, i64** %217, align 8
  %219 = load i64, i64* %9, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  %221 = load i64*, i64** %12, align 8
  %222 = load i64, i64* %9, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @CK_HS_STORE(i64* %220, i64 %224)
  br label %226

226:                                              ; preds = %215
  %227 = load i64, i64* %9, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %9, align 8
  br label %208

229:                                              ; preds = %208
  %230 = load %struct.ck_hs*, %struct.ck_hs** %5, align 8
  %231 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %230, i32 0, i32 2
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 1
  %234 = load i32 (i64*, i64, i32)*, i32 (i64*, i64, i32)** %233, align 8
  %235 = load i64*, i64** %12, align 8
  %236 = load i64, i64* %8, align 8
  %237 = call i32 %234(i64* %235, i64 %236, i32 0)
  br label %238

238:                                              ; preds = %229, %204
  store i32 1, i32* %4, align 4
  br label %239

239:                                              ; preds = %238, %70, %46
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i32 @ck_pr_store_uint(i32*, i32) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i8** @ck_hs_map_probe(%struct.ck_hs*, %struct.ck_hs_map*, i64*, i8***, i64, i8*, i8**, i32, i32) #1

declare dso_local i32 @ck_hs_map_bound_get(%struct.ck_hs_map*, i64) #1

declare dso_local i8* @ck_hs_marshal(i32, i8*, i64) #1

declare dso_local i32 @ck_pr_store_ptr(i8**, i8*) #1

declare dso_local i32 @ck_hs_map_signal(%struct.ck_hs_map*, i64) #1

declare dso_local i32 @CK_HS_STORE(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
