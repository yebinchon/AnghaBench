; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_resolveAlias.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_resolveAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64, i32, %struct.TYPE_31__, %struct.TYPE_29__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_35__* }
%struct.TYPE_29__ = type { i32 }

@TK_COLLATE = common dso_local global i64 0, align 8
@EP_Static = common dso_local global i32 0, align 4
@EP_IntValue = common dso_local global i32 0, align 4
@EP_Reduced = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@EP_MemToken = common dso_local global i32 0, align 4
@EP_WinFunc = common dso_local global i32 0, align 4
@EP_Alias = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, %struct.TYPE_35__*, i8*, i32)* @resolveAlias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolveAlias(%struct.TYPE_33__* %0, %struct.TYPE_34__* %1, i32 %2, %struct.TYPE_35__* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_35__*, align 8
  %14 = alloca %struct.TYPE_35__*, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %7, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_35__* %3, %struct.TYPE_35__** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %6
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br label %24

24:                                               ; preds = %18, %6
  %25 = phi i1 [ false, %6 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %34, align 8
  store %struct.TYPE_35__* %35, %struct.TYPE_35__** %13, align 8
  %36 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %37 = icmp ne %struct.TYPE_35__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %41, align 8
  store %struct.TYPE_32__* %42, %struct.TYPE_32__** %15, align 8
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %45 = call %struct.TYPE_35__* @sqlite3ExprDup(%struct.TYPE_32__* %43, %struct.TYPE_35__* %44, i32 0)
  store %struct.TYPE_35__* %45, %struct.TYPE_35__** %14, align 8
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %47 = icmp ne %struct.TYPE_35__* %46, null
  br i1 %47, label %48, label %145

48:                                               ; preds = %24
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 71
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @incrAggFunctionDepth(%struct.TYPE_35__* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TK_COLLATE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.TYPE_35__* @sqlite3ExprAddCollateString(%struct.TYPE_33__* %65, %struct.TYPE_35__* %66, i32 %70)
  store %struct.TYPE_35__* %71, %struct.TYPE_35__** %14, align 8
  br label %72

72:                                               ; preds = %64, %58
  %73 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %74 = load i32, i32* @EP_Static, align 4
  %75 = call i32 @ExprSetProperty(%struct.TYPE_35__* %73, i32 %74)
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %77 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %78 = call i32 @sqlite3ExprDelete(%struct.TYPE_32__* %76, %struct.TYPE_35__* %77)
  %79 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %81 = call i32 @memcpy(%struct.TYPE_35__* %79, %struct.TYPE_35__* %80, i32 32)
  %82 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %83 = load i32, i32* @EP_IntValue, align 4
  %84 = call i64 @ExprHasProperty(%struct.TYPE_35__* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %117, label %86

86:                                               ; preds = %72
  %87 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %86
  %93 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @EP_Reduced, align 4
  %97 = load i32, i32* @EP_TokenOnly, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %104 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @sqlite3DbStrDup(%struct.TYPE_32__* %103, i32 %107)
  %109 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load i32, i32* @EP_MemToken, align 4
  %113 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %92, %86, %72
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %119 = load i32, i32* @EP_WinFunc, align 4
  %120 = call i64 @ExprHasProperty(%struct.TYPE_35__* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %117
  %123 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %125, align 8
  %127 = icmp ne %struct.TYPE_30__* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %130 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 0
  store %struct.TYPE_35__* %129, %struct.TYPE_35__** %134, align 8
  br label %140

135:                                              ; preds = %122
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @assert(i32 %138)
  br label %140

140:                                              ; preds = %135, %128
  br label %141

141:                                              ; preds = %140, %117
  %142 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %143 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %144 = call i32 @sqlite3DbFree(%struct.TYPE_32__* %142, %struct.TYPE_35__* %143)
  br label %145

145:                                              ; preds = %141, %24
  %146 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %147 = load i32, i32* @EP_Alias, align 4
  %148 = call i32 @ExprSetProperty(%struct.TYPE_35__* %146, i32 %147)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_35__* @sqlite3ExprDup(%struct.TYPE_32__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @incrAggFunctionDepth(%struct.TYPE_35__*, i32) #1

declare dso_local %struct.TYPE_35__* @sqlite3ExprAddCollateString(%struct.TYPE_33__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_32__*, %struct.TYPE_35__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_35__*, %struct.TYPE_35__*, i32) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @sqlite3DbStrDup(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_32__*, %struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
