; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_tokenExpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_tokenExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_16__, i64, i64, i64, %struct.TYPE_15__, i64, %struct.TYPE_14__, i64, i64, i32, i64, i64 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@EP_Leaf = common dso_local global i32 0, align 4
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_18__*, i32, i64)* @tokenExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @tokenExpr(%struct.TYPE_18__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = bitcast %struct.TYPE_17__* %5 to i64*
  store i64 %2, i64* %9, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 104, %15
  %17 = add i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = call %struct.TYPE_19__* @sqlite3DbMallocRawNN(i32 %12, i32 %18)
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %8, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = icmp ne %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %96

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 13
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 12
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @EP_Leaf, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 11
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 9
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 10
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 7
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i64 1
  %54 = bitcast %struct.TYPE_19__* %53 to i8*
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i8* %61, i32 %63, i32 %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @sqlite3Isquote(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %22
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = call i32 @sqlite3DequoteExpr(%struct.TYPE_19__* %84)
  br label %86

86:                                               ; preds = %83, %22
  %87 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %92 = bitcast %struct.TYPE_19__* %91 to i8*
  %93 = call i64 @sqlite3RenameTokenMap(%struct.TYPE_18__* %90, i8* %92, %struct.TYPE_17__* %5)
  %94 = inttoptr i64 %93 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %94, %struct.TYPE_19__** %4, align 8
  br label %98

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %3
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %97, %struct.TYPE_19__** %4, align 8
  br label %98

98:                                               ; preds = %96, %89
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %99
}

declare dso_local %struct.TYPE_19__* @sqlite3DbMallocRawNN(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @sqlite3Isquote(i8 signext) #1

declare dso_local i32 @sqlite3DequoteExpr(%struct.TYPE_19__*) #1

declare dso_local i64 @sqlite3RenameTokenMap(%struct.TYPE_18__*, i8*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
