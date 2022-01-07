; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_createMemoTableArray.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_createMemoTableArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { i64* }

@ZSTD_STRATEGY_MAX = common dso_local global i64 0, align 8
@ZSTD_STRATEGY_MIN = common dso_local global i32 0, align 4
@noMemo = common dso_local global i32 0, align 4
@strt_ind = common dso_local global i64 0, align 8
@PARAM_UNSET = common dso_local global i64 0, align 8
@directMap = common dso_local global i32 0, align 4
@xxhashMap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i64*, i32*, i64, i64)* @createMemoTableArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @createMemoTableArray(i64* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i64* %0, i64** %15, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* @ZSTD_STRATEGY_MAX, align 8
  %17 = add i64 %16, 1
  %18 = call i64 @calloc(i32 32, i64 %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %10, align 8
  %20 = load i32, i32* @ZSTD_STRATEGY_MIN, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i64, i64* @ZSTD_STRATEGY_MAX, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %177

26:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, i32* %11, align 4
  %29 = load i64, i64* @ZSTD_STRATEGY_MAX, align 8
  %30 = trunc i64 %29 to i32
  %31 = icmp sle i32 %28, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @sanitizeVarArray(i32 %38, i64 %39, i32* %40, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  store i32 %42, i32* %47, align 4
  br label %48

48:                                               ; preds = %32
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %51
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %77, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i64, i64* @ZSTD_STRATEGY_MAX, align 8
  %58 = trunc i64 %57 to i32
  %59 = icmp sle i32 %56, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = load i32, i32* @noMemo, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32 %61, i32* %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %55

80:                                               ; preds = %55
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %5, align 8
  br label %177

82:                                               ; preds = %51
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* @strt_ind, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PARAM_UNSET, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @strt_ind, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %12, align 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @strt_ind, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %90, %82
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %172, %103
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %175

109:                                              ; preds = %105
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @memoTableLen(i32 %115, i32 %121)
  store i64 %122, i64* %14, align 8
  %123 = load i32, i32* @directMap, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  store i32 %123, i32* %128, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* @PARAM_UNSET, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %109
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* %9, align 8
  %135 = shl i64 1, %134
  %136 = icmp ugt i64 %133, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load i32, i32* @xxhashMap, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  store i32 %138, i32* %143, align 8
  %144 = load i64, i64* %9, align 8
  %145 = shl i64 1, %144
  store i64 %145, i64* %14, align 8
  br label %146

146:                                              ; preds = %137, %132, %109
  %147 = load i64, i64* %14, align 8
  %148 = call i64 @calloc(i32 4, i64 %147)
  %149 = inttoptr i64 %148 to i32*
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  store i32* %149, i32** %154, align 8
  %155 = load i64, i64* %14, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  store i64 %155, i64* %160, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %146
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %170 = call i32 @freeMemoTableArray(%struct.TYPE_7__* %169)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %177

171:                                              ; preds = %146
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %105

175:                                              ; preds = %105
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %176, %struct.TYPE_7__** %5, align 8
  br label %177

177:                                              ; preds = %175, %168, %80, %25
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %178
}

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @sanitizeVarArray(i32, i64, i32*, i32) #1

declare dso_local i64 @memoTableLen(i32, i32) #1

declare dso_local i32 @freeMemoTableArray(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
