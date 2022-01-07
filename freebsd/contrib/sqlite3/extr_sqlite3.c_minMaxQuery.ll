; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_minMaxQuery.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_minMaxQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@WHERE_ORDERBY_NORMAL = common dso_local global i32 0, align 4
@TK_AGG_FUNCTION = common dso_local global i64 0, align 8
@EP_WinFunc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"min\00", align 1
@WHERE_ORDERBY_MIN = common dso_local global i32 0, align 4
@KEYINFO_ORDER_BIGNULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@WHERE_ORDERBY_MAX = common dso_local global i32 0, align 4
@KEYINFO_ORDER_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_19__**)* @minMaxQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minMaxQuery(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, %struct.TYPE_19__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_19__** %2, %struct.TYPE_19__*** %7, align 8
  %13 = load i32, i32* @WHERE_ORDERBY_NORMAL, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %9, align 8
  %18 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = icmp eq %struct.TYPE_19__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TK_AGG_FUNCTION, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %31 = call i32 @IsWindowFunc(%struct.TYPE_20__* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %37 = icmp eq %struct.TYPE_19__* %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %3
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %45 = load i32, i32* @EP_WinFunc, align 4
  %46 = call i64 @ExprHasProperty(%struct.TYPE_20__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43, %38, %3
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %98

50:                                               ; preds = %43
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i64 @sqlite3StrICmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @WHERE_ORDERBY_MIN, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @KEYINFO_ORDER_BIGNULL, align 4
  store i32 %60, i32* %12, align 4
  br label %71

61:                                               ; preds = %50
  %62 = load i8*, i8** %10, align 8
  %63 = call i64 @sqlite3StrICmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @WHERE_ORDERBY_MAX, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @KEYINFO_ORDER_DESC, align 4
  store i32 %67, i32* %12, align 4
  br label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %98

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %58
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %74 = call %struct.TYPE_19__* @sqlite3ExprListDup(%struct.TYPE_18__* %72, %struct.TYPE_19__* %73, i32 0)
  store %struct.TYPE_19__* %74, %struct.TYPE_19__** %11, align 8
  %75 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  store %struct.TYPE_19__* %74, %struct.TYPE_19__** %75, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %77 = icmp ne %struct.TYPE_19__* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %78, %71
  %84 = phi i1 [ true, %71 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %88 = icmp ne %struct.TYPE_19__* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 4
  br label %96

96:                                               ; preds = %89, %83
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %68, %48
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsWindowFunc(%struct.TYPE_20__*) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

declare dso_local %struct.TYPE_19__* @sqlite3ExprListDup(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
