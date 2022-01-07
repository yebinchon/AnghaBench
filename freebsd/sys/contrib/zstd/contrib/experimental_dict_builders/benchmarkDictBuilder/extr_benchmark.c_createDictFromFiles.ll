; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/experimental_dict_builders/benchmarkDictBuilder/extr_benchmark.c_createDictFromFiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/experimental_dict_builders/benchmarkDictBuilder/extr_benchmark.c_createDictFromFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i8*, i64 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }

@DEFAULT_DISPLAYLEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"not enough memory for trainFromFiles\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"dictionary training failed : %s \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_29__* @createDictFromFiles(%struct.TYPE_28__* %0, i32 %1, %struct.TYPE_30__* %2, %struct.TYPE_23__* %3, %struct.TYPE_31__* %4, %struct.TYPE_32__* %5) #0 {
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_23__, align 8
  %19 = alloca %struct.TYPE_32__, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %10, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_31__* %4, %struct.TYPE_31__** %12, align 8
  store %struct.TYPE_32__* %5, %struct.TYPE_32__** %13, align 8
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %21 = icmp ne %struct.TYPE_30__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %59

27:                                               ; preds = %6
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %29 = icmp ne %struct.TYPE_23__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %57

35:                                               ; preds = %27
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %37 = icmp ne %struct.TYPE_31__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %55

43:                                               ; preds = %35
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %45 = icmp ne %struct.TYPE_32__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  br label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @DEFAULT_DISPLAYLEVEL, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi i32 [ %50, %46 ], [ %52, %51 ]
  br label %55

55:                                               ; preds = %53, %38
  %56 = phi i32 [ %42, %38 ], [ %54, %53 ]
  br label %57

57:                                               ; preds = %55, %30
  %58 = phi i32 [ %34, %30 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %22
  %60 = phi i32 [ %26, %22 ], [ %58, %57 ]
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i8* @malloc(i32 %61)
  store i8* %62, i8** %15, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %16, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = call i32 @EXM_THROW(i32 12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %59
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %69 = icmp ne %struct.TYPE_30__* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i8*, i8** %15, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ZDICT_trainFromBuffer_random(i8* %71, i32 %72, i32 %75, i32 %78, i32 %81, i32 %85)
  store i64 %86, i64* %17, align 8
  br label %199

87:                                               ; preds = %67
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %89 = icmp ne %struct.TYPE_23__* %88, null
  br i1 %89, label %90, label %131

90:                                               ; preds = %87
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %95, %90
  %101 = load i8*, i8** %15, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %113 = call i64 @ZDICT_optimizeTrainFromBuffer_cover(i8* %101, i32 %102, i32 %105, i32 %108, i32 %111, %struct.TYPE_23__* %112)
  store i64 %113, i64* %17, align 8
  br label %130

114:                                              ; preds = %95
  %115 = load i8*, i8** %15, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %127 = bitcast %struct.TYPE_23__* %18 to i8*
  %128 = bitcast %struct.TYPE_23__* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 4 %128, i64 12, i1 false)
  %129 = call i64 @ZDICT_trainFromBuffer_cover(i8* %115, i32 %116, i32 %119, i32 %122, i32 %125, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %18)
  store i64 %129, i64* %17, align 8
  br label %130

130:                                              ; preds = %114, %100
  br label %198

131:                                              ; preds = %87
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %133 = icmp ne %struct.TYPE_31__* %132, null
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = load i8*, i8** %15, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @ZDICT_trainFromBuffer_legacy(i8* %135, i32 %136, i32 %139, i32 %142, i32 %145, i32 %149)
  store i64 %150, i64* %17, align 8
  br label %197

151:                                              ; preds = %131
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %153 = icmp ne %struct.TYPE_32__* %152, null
  br i1 %153, label %154, label %195

154:                                              ; preds = %151
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %178, label %164

164:                                              ; preds = %159, %154
  %165 = load i8*, i8** %15, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %177 = call i64 @ZDICT_optimizeTrainFromBuffer_fastCover(i8* %165, i32 %166, i32 %169, i32 %172, i32 %175, %struct.TYPE_32__* %176)
  store i64 %177, i64* %17, align 8
  br label %194

178:                                              ; preds = %159
  %179 = load i8*, i8** %15, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %191 = bitcast %struct.TYPE_32__* %19 to i8*
  %192 = bitcast %struct.TYPE_32__* %190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %191, i8* align 4 %192, i64 12, i1 false)
  %193 = call i64 @ZDICT_trainFromBuffer_fastCover(i8* %179, i32 %180, i32 %183, i32 %186, i32 %189, %struct.TYPE_32__* byval(%struct.TYPE_32__) align 8 %19)
  store i64 %193, i64* %17, align 8
  br label %194

194:                                              ; preds = %178, %164
  br label %196

195:                                              ; preds = %151
  store i64 0, i64* %17, align 8
  br label %196

196:                                              ; preds = %195, %194
  br label %197

197:                                              ; preds = %196, %134
  br label %198

198:                                              ; preds = %197, %130
  br label %199

199:                                              ; preds = %198, %70
  %200 = load i64, i64* %17, align 8
  %201 = call i64 @ZDICT_isError(i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load i64, i64* %17, align 8
  %205 = call i32 @ZDICT_getErrorName(i64 %204)
  %206 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %205)
  %207 = load i8*, i8** %15, align 8
  %208 = call i32 @free(i8* %207)
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  store %struct.TYPE_29__* %209, %struct.TYPE_29__** %7, align 8
  br label %220

210:                                              ; preds = %199
  %211 = call i8* @malloc(i32 16)
  %212 = bitcast i8* %211 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %212, %struct.TYPE_29__** %16, align 8
  %213 = load i8*, i8** %15, align 8
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  %216 = load i64, i64* %17, align 8
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 1
  store i64 %216, i64* %218, align 8
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  store %struct.TYPE_29__* %219, %struct.TYPE_29__** %7, align 8
  br label %220

220:                                              ; preds = %210, %203
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  ret %struct.TYPE_29__* %221
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @EXM_THROW(i32, i8*) #1

declare dso_local i64 @ZDICT_trainFromBuffer_random(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ZDICT_optimizeTrainFromBuffer_cover(i8*, i32, i32, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i64 @ZDICT_trainFromBuffer_cover(i8*, i32, i32, i32, i32, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ZDICT_trainFromBuffer_legacy(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ZDICT_optimizeTrainFromBuffer_fastCover(i8*, i32, i32, i32, i32, %struct.TYPE_32__*) #1

declare dso_local i64 @ZDICT_trainFromBuffer_fastCover(i8*, i32, i32, i32, i32, %struct.TYPE_32__* byval(%struct.TYPE_32__) align 8) #1

declare dso_local i64 @ZDICT_isError(i64) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i32) #1

declare dso_local i32 @ZDICT_getErrorName(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
