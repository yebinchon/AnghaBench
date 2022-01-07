; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_radix.c_isc_radix_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_radix.c_isc_radix_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i32 }

@RADIX_MAXBITS = common dso_local global i32 0, align 4
@ISC_R_NOTFOUND = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_radix_search(%struct.TYPE_9__* %0, %struct.TYPE_10__** %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %16 = load i32, i32* @RADIX_MAXBITS, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.TYPE_10__*, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @REQUIRE(i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @REQUIRE(i32 %27)
  %29 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %30 = icmp ne %struct.TYPE_10__** %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = icmp eq %struct.TYPE_10__* %33, null
  br label %35

35:                                               ; preds = %31, %3
  %36 = phi i1 [ false, %3 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @REQUIRE(i32 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @RUNTIME_CHECK(i32 %46)
  %48 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = icmp eq %struct.TYPE_10__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %35
  %54 = load i32, i32* @ISC_R_NOTFOUND, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %197

55:                                               ; preds = %35
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %8, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = call i32* @isc_prefix_touchar(%struct.TYPE_11__* %59)
  store i32* %60, i32** %11, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %109, %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %110

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = icmp ne %struct.TYPE_11__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %20, i64 %79
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %80, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32*, i32** %11, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = ashr i64 %85, 3
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = and i64 %91, 7
  %93 = trunc i64 %92 to i32
  %94 = ashr i32 128, %93
  %95 = call i64 @BIT_TEST(i32 %88, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %81
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %8, align 8
  br label %105

101:                                              ; preds = %81
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %8, align 8
  br label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = icmp eq %struct.TYPE_10__* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %110

109:                                              ; preds = %105
  br label %64

110:                                              ; preds = %108, %64
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %112 = icmp ne %struct.TYPE_10__* %111, null
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = icmp ne %struct.TYPE_11__* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %20, i64 %122
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %123, align 8
  br label %124

124:                                              ; preds = %118, %113, %110
  br label %125

125:                                              ; preds = %188, %124
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %14, align 4
  %128 = icmp sgt i32 %126, 0
  br i1 %128, label %129, label %189

129:                                              ; preds = %125
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %20, i64 %131
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  store %struct.TYPE_10__* %133, %struct.TYPE_10__** %8, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = call i32 @isc_prefix_tochar(%struct.TYPE_11__* %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = call i32 @isc_prefix_tochar(%struct.TYPE_11__* %138)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @_comp_with_mask(i32 %137, i32 %139, i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %188

147:                                              ; preds = %129
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @ISC_IS6(i32 %153)
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, -1
  br i1 %157, label %158, label %187

158:                                              ; preds = %147
  %159 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = icmp eq %struct.TYPE_10__* %160, null
  br i1 %161, label %181, label %162

162:                                              ; preds = %158
  %163 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = call i64 @ISC_IS6(i32 %167)
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @ISC_IS6(i32 %176)
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = icmp sgt i32 %170, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %162, %158
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %183 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* %182, %struct.TYPE_10__** %183, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  store i32 %186, i32* %13, align 4
  br label %187

187:                                              ; preds = %181, %162, %147
  br label %188

188:                                              ; preds = %187, %129
  br label %125

189:                                              ; preds = %125
  %190 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = icmp eq %struct.TYPE_10__* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load i32, i32* @ISC_R_NOTFOUND, align 4
  store i32 %194, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %197

195:                                              ; preds = %189
  %196 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %196, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %197

197:                                              ; preds = %195, %193, %53
  %198 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @REQUIRE(i32) #2

declare dso_local i32 @RUNTIME_CHECK(i32) #2

declare dso_local i32* @isc_prefix_touchar(%struct.TYPE_11__*) #2

declare dso_local i64 @BIT_TEST(i32, i32) #2

declare dso_local i64 @_comp_with_mask(i32, i32, i64) #2

declare dso_local i32 @isc_prefix_tochar(%struct.TYPE_11__*) #2

declare dso_local i64 @ISC_IS6(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
