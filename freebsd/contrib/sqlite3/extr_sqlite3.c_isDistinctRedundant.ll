; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_isDistinctRedundant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_isDistinctRedundant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, i64 }

@TK_COLUMN = common dso_local global i64 0, align 8
@WO_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_19__*, i32*, %struct.TYPE_21__*)* @isDistinctRedundant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isDistinctRedundant(i32* %0, %struct.TYPE_19__* %1, i32* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %130

20:                                               ; preds = %4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %10, align 8
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %67, %20
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %33
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_22__* @sqlite3ExprSkipCollateAndLikely(i32 %47)
  store %struct.TYPE_22__* %48, %struct.TYPE_22__** %14, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TK_COLUMN, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %39
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %5, align 4
  br label %130

66:                                               ; preds = %60, %54, %39
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %33

70:                                               ; preds = %33
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %11, align 8
  br label %74

74:                                               ; preds = %125, %70
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %76 = icmp ne %struct.TYPE_20__* %75, null
  br i1 %76, label %77, label %129

77:                                               ; preds = %74
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %79 = call i32 @IsUniqueIndex(%struct.TYPE_20__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  br label %125

82:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %114, %82
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %83
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @WO_EQ, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %95 = call i64 @sqlite3WhereFindTerm(i32* %90, i32 %91, i32 %92, i32 -1, i32 %93, %struct.TYPE_20__* %94)
  %96 = icmp eq i64 0, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %89
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i64 @findIndexCol(i32* %98, %struct.TYPE_21__* %99, i32 %100, %struct.TYPE_20__* %101, i32 %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %117

106:                                              ; preds = %97
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i64 @indexColumnNotNull(%struct.TYPE_20__* %107, i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %117

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %89
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %83

117:                                              ; preds = %111, %105, %83
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 1, i32* %5, align 4
  br label %130

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %81
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  store %struct.TYPE_20__* %128, %struct.TYPE_20__** %11, align 8
  br label %74

129:                                              ; preds = %74
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %123, %65, %19
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_22__* @sqlite3ExprSkipCollateAndLikely(i32) #1

declare dso_local i32 @IsUniqueIndex(%struct.TYPE_20__*) #1

declare dso_local i64 @sqlite3WhereFindTerm(i32*, i32, i32, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i64 @findIndexCol(i32*, %struct.TYPE_21__*, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @indexColumnNotNull(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
