; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_pack.c_sort_reps_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_pack.c_sort_reps_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }

@compare_ref_to_item = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__**, %struct.TYPE_12__**, i32, i32)* @sort_reps_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_reps_range(%struct.TYPE_13__* %0, %struct.TYPE_12__** %1, %struct.TYPE_12__** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__**, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %15, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %248

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %97, %29
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %100

36:                                               ; preds = %32
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %37, i64 %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @roundness(i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %36
  %51 = load i32, i32* %16, align 4
  %52 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %52, i64 %54
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sdiv i32 %58, 4
  %60 = icmp sge i32 %51, %59
  br label %61

61:                                               ; preds = %50, %36
  %62 = phi i1 [ false, %36 ], [ %60, %50 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %17, align 4
  %64 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %64, i64 %66
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78, %61
  %82 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %82, i64 %84
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %87, i64 %90
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %91, align 8
  %92 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %92, i64 %94
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %95, align 8
  br label %96

96:                                               ; preds = %81, %78
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %32

100:                                              ; preds = %32
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %129, %100
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %132

106:                                              ; preds = %102
  %107 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %107, i64 %109
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = icmp ne %struct.TYPE_12__* %111, null
  br i1 %112, label %113, label %128

113:                                              ; preds = %106
  %114 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %114, i64 %116
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %11, align 8
  %121 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %121, i64 %123
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %14, align 4
  br label %132

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %102

132:                                              ; preds = %113, %102
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %211, %132
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %214

138:                                              ; preds = %134
  %139 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %139, i64 %141
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = icmp ne %struct.TYPE_12__* %143, null
  br i1 %144, label %145, label %210

145:                                              ; preds = %138
  %146 = load i32*, i32** %11, align 8
  %147 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %147, i64 %149
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = call i64 @svn_prefix_string__compare(i32* %146, i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %145
  %157 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %157, i64 %159
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %11, align 8
  %164 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %164, i64 %166
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %156, %145
  %172 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %172, i64 %174
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = call i64 @svn_fs_fs__id_part_eq(i32* %177, i32* %14)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %209

180:                                              ; preds = %171
  %181 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %181, i64 %183
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %186, i64 %189
  store %struct.TYPE_12__* %185, %struct.TYPE_12__** %190, align 8
  %191 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %191, i64 %193
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %194, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i64, i64* @compare_ref_to_item, align 8
  %199 = inttoptr i64 %198 to i32 (i8*, i8*)*
  %200 = call %struct.TYPE_11__** @svn_sort__array_lookup(i32 %197, i32* %14, i32* null, i32 (i8*, i8*)* %199)
  store %struct.TYPE_11__** %200, %struct.TYPE_11__*** %19, align 8
  %201 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %19, align 8
  %202 = icmp ne %struct.TYPE_11__** %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %180
  %204 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %19, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %14, align 4
  br label %208

208:                                              ; preds = %203, %180
  br label %209

209:                                              ; preds = %208, %171
  br label %210

210:                                              ; preds = %209, %138
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %134

214:                                              ; preds = %134
  %215 = load i32, i32* %9, align 4
  store i32 %215, i32* %12, align 4
  br label %216

216:                                              ; preds = %239, %214
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %242

220:                                              ; preds = %216
  %221 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %221, i64 %223
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = icmp ne %struct.TYPE_12__* %225, null
  br i1 %226, label %227, label %238

227:                                              ; preds = %220
  %228 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %228, i64 %230
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %13, align 4
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %233, i64 %236
  store %struct.TYPE_12__* %232, %struct.TYPE_12__** %237, align 8
  br label %238

238:                                              ; preds = %227, %220
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %12, align 4
  br label %216

242:                                              ; preds = %216
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp eq i32 %243, %244
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  br label %248

248:                                              ; preds = %242, %28
  ret void
}

declare dso_local i32 @roundness(i32) #1

declare dso_local i64 @svn_prefix_string__compare(i32*, i32*) #1

declare dso_local i64 @svn_fs_fs__id_part_eq(i32*, i32*) #1

declare dso_local %struct.TYPE_11__** @svn_sort__array_lookup(i32, i32*, i32*, i32 (i8*, i8*)*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
