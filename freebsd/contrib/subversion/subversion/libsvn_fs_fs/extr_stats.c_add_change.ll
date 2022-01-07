; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_add_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_add_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i64, i32, i8*, i32, i64)* @add_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_change(%struct.TYPE_9__* %0, i64 %1, i64 %2, i32 %3, i8* %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 14
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %22, %27
  br i1 %28, label %29, label %116

29:                                               ; preds = %7
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 14
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %16, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %35, i64 %40
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %17, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @svn_stringbuf_set(i32 %51, i8* %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %91, %29
  %59 = load i32, i32* %15, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %58
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %64, i64 %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %94

75:                                               ; preds = %61
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %78, i64 %81
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %86, i64 %88
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %89, align 8
  br label %90

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %15, align 4
  br label %58

94:                                               ; preds = %74, %58
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %98, i64 %100
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %104, i64 %109
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %94, %7
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 13
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @add_to_histogram(i32* %118, i64 %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 12
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @add_to_histogram(i32* %122, i64 %123)
  %125 = load i64, i64* %14, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %116
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 11
  %130 = load i64, i64* %9, align 8
  %131 = call i32 @add_to_histogram(i32* %129, i64 %130)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 10
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @add_to_histogram(i32* %133, i64 %134)
  br label %136

136:                                              ; preds = %127, %116
  %137 = load i32, i32* %13, align 4
  switch i32 %137, label %179 [
    i32 128, label %138
    i32 132, label %143
    i32 130, label %152
    i32 131, label %161
    i32 129, label %170
  ]

138:                                              ; preds = %136
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 9
  %141 = load i64, i64* %9, align 8
  %142 = call i32 @add_to_histogram(i32* %140, i64 %141)
  br label %179

143:                                              ; preds = %136
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 8
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @add_to_histogram(i32* %145, i64 %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 7
  %150 = load i64, i64* %10, align 8
  %151 = call i32 @add_to_histogram(i32* %149, i64 %150)
  br label %179

152:                                              ; preds = %136
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 6
  %155 = load i64, i64* %9, align 8
  %156 = call i32 @add_to_histogram(i32* %154, i64 %155)
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 5
  %159 = load i64, i64* %10, align 8
  %160 = call i32 @add_to_histogram(i32* %158, i64 %159)
  br label %179

161:                                              ; preds = %136
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 4
  %164 = load i64, i64* %9, align 8
  %165 = call i32 @add_to_histogram(i32* %163, i64 %164)
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 3
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @add_to_histogram(i32* %167, i64 %168)
  br label %179

170:                                              ; preds = %136
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 2
  %173 = load i64, i64* %9, align 8
  %174 = call i32 @add_to_histogram(i32* %172, i64 %173)
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load i64, i64* %10, align 8
  %178 = call i32 @add_to_histogram(i32* %176, i64 %177)
  br label %179

179:                                              ; preds = %136, %170, %161, %152, %143, %138
  %180 = load i32, i32* %13, align 4
  %181 = icmp eq i32 %180, 129
  br i1 %181, label %182, label %240

182:                                              ; preds = %179
  %183 = load i8*, i8** %12, align 8
  %184 = call i8* @strrchr(i8* %183, i8 signext 47)
  store i8* %184, i8** %19, align 8
  %185 = load i8*, i8** %19, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i8*, i8** %19, align 8
  %189 = call i8* @strrchr(i8* %188, i8 signext 46)
  br label %191

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190, %187
  %192 = phi i8* [ %189, %187 ], [ null, %190 ]
  store i8* %192, i8** %20, align 8
  %193 = load i8*, i8** %20, align 8
  %194 = icmp eq i8* %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %191
  %196 = load i8*, i8** %20, align 8
  %197 = load i8*, i8** %19, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = icmp eq i8* %196, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %195, %191
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  br label %201

201:                                              ; preds = %200, %195
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i8*, i8** %20, align 8
  %206 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %207 = call %struct.TYPE_12__* @apr_hash_get(i32 %204, i8* %205, i32 %206)
  store %struct.TYPE_12__* %207, %struct.TYPE_12__** %18, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %209 = icmp eq %struct.TYPE_12__* %208, null
  br i1 %209, label %210, label %231

210:                                              ; preds = %201
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32* @apr_hash_pool_get(i32 %213)
  store i32* %214, i32** %21, align 8
  %215 = load i32*, i32** %21, align 8
  %216 = call %struct.TYPE_12__* @apr_pcalloc(i32* %215, i32 12)
  store %struct.TYPE_12__* %216, %struct.TYPE_12__** %18, align 8
  %217 = load i32*, i32** %21, align 8
  %218 = load i8*, i8** %20, align 8
  %219 = call i32 @apr_pstrdup(i32* %217, i8* %218)
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 4
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %230 = call i32 @apr_hash_set(i32 %224, i32 %227, i32 %228, %struct.TYPE_12__* %229)
  br label %231

231:                                              ; preds = %210, %201
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 1
  %234 = load i64, i64* %10, align 8
  %235 = call i32 @add_to_histogram(i32* %233, i64 %234)
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load i64, i64* %9, align 8
  %239 = call i32 @add_to_histogram(i32* %237, i64 %238)
  br label %240

240:                                              ; preds = %231, %179
  ret void
}

declare dso_local i32 @svn_stringbuf_set(i32, i8*) #1

declare dso_local i32 @add_to_histogram(i32*, i64) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_12__* @apr_hash_get(i32, i8*, i32) #1

declare dso_local i32* @apr_hash_pool_get(i32) #1

declare dso_local %struct.TYPE_12__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @apr_hash_set(i32, i32, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
