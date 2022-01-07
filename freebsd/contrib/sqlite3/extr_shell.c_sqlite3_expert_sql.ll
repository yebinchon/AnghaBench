; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sqlite3_expert_sql.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sqlite3_expert_sql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32*, i32, i64 }
%struct.TYPE_7__ = type { i8*, i64, %struct.TYPE_7__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_expert_sql(%struct.TYPE_6__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %9, align 8
  %22 = load i32, i32* @SQLITE_OK, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %11, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @SQLITE_MISUSE, align 4
  store i32 %29, i32* %4, align 4
  br label %142

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %118, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %38, %35, %31
  %45 = phi i1 [ false, %35 ], [ false, %31 ], [ %43, %38 ]
  br i1 %45, label %46, label %119

46:                                               ; preds = %44
  store i32* null, i32** %12, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @sqlite3_prepare_v2(i32 %49, i8* %50, i32 -1, i32** %12, i8** %11)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @SQLITE_OK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %112

55:                                               ; preds = %46
  %56 = load i32*, i32** %12, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %111

58:                                               ; preds = %55
  %59 = load i32*, i32** %12, align 8
  %60 = call i8* @sqlite3_sql(i32* %59)
  store i8* %60, i8** %14, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @STRLEN(i8* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 24, %64
  %66 = add i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = call i64 @idxMalloc(i32* %10, i32 %67)
  %69 = inttoptr i64 %68 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %13, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @SQLITE_OK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %108

73:                                               ; preds = %58
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 1
  %76 = bitcast %struct.TYPE_7__* %75 to i8*
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @memcpy(i8* %81, i8* %82, i32 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = icmp ne %struct.TYPE_7__* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %73
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %95, %73
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %107, align 8
  br label %108

108:                                              ; preds = %104, %58
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @sqlite3_finalize(i32* %109)
  br label %111

111:                                              ; preds = %108, %55
  br label %118

112:                                              ; preds = %46
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i8**, i8*** %7, align 8
  %117 = call i32 @idxDatabaseError(i32 %115, i8** %116)
  br label %118

118:                                              ; preds = %112, %111
  br label %31

119:                                              ; preds = %44
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @SQLITE_OK, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %119
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @idxScanFree(i32* %126, i32* %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %133 = call i32 @idxStatementFree(%struct.TYPE_7__* %131, %struct.TYPE_7__* %132)
  %134 = load i32*, i32** %8, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  store i32* %134, i32** %136, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store %struct.TYPE_7__* %137, %struct.TYPE_7__** %139, align 8
  br label %140

140:                                              ; preds = %123, %119
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %28
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i8**) #1

declare dso_local i8* @sqlite3_sql(i32*) #1

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i64 @idxMalloc(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @idxDatabaseError(i32, i8**) #1

declare dso_local i32 @idxScanFree(i32*, i32*) #1

declare dso_local i32 @idxStatementFree(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
