; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/tea/generic/extr_tclsqlite3.c_dbEvalStep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/tea/generic/extr_tclsqlite3.c_dbEvalStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i64, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32, i32, i64, i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i32* }

@TCL_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_STMTSTATUS_FULLSCAN_STEP = common dso_local global i32 0, align 4
@SQLITE_STMTSTATUS_SORT = common dso_local global i32 0, align 4
@SQLITE_STMTSTATUS_AUTOINDEX = common dso_local global i32 0, align 4
@SQLITE_STMTSTATUS_VM_STEP = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@TCL_ERROR = common dso_local global i32 0, align 4
@TCL_BREAK = common dso_local global i32 0, align 4
@SQLITE_SCHEMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @dbEvalStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbEvalStep(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8* null, i8** %4, align 8
  br label %10

10:                                               ; preds = %135, %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %10
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %10
  %24 = phi i1 [ true, %10 ], [ %22, %18 ]
  br i1 %24, label %25, label %136

25:                                               ; preds = %23
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %41

37:                                               ; preds = %30
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi i8* [ null, %36 ], [ %40, %37 ]
  store i8* %42, i8** %4, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = call i32 @dbPrepareAndBind(%struct.TYPE_10__* %45, i8* %48, i8** %50, i64* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @TCL_OK, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %138

59:                                               ; preds = %41
  br label %135

60:                                               ; preds = %25
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %7, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %8, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %9, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @sqlite3_step(i32* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @SQLITE_ROW, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i32, i32* @TCL_OK, align 4
  store i32 %77, i32* %2, align 4
  br label %138

78:                                               ; preds = %60
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = call i32 @dbEvalRowInfo(%struct.TYPE_12__* %84, i32 0, i32 0)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @sqlite3_reset(i32* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* @SQLITE_STMTSTATUS_FULLSCAN_STEP, align 4
  %91 = call i8* @sqlite3_stmt_status(i32* %89, i32 %90, i32 1)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 6
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @SQLITE_STMTSTATUS_SORT, align 4
  %96 = call i8* @sqlite3_stmt_status(i32* %94, i32 %95, i32 1)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* @SQLITE_STMTSTATUS_AUTOINDEX, align 4
  %101 = call i8* @sqlite3_stmt_status(i32* %99, i32 %100, i32 1)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* @SQLITE_STMTSTATUS_VM_STEP, align 4
  %106 = call i8* @sqlite3_stmt_status(i32* %104, i32 %105, i32 1)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = call i32 @dbReleaseColumnNames(%struct.TYPE_12__* %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %86
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %119 = call i32 @dbReleaseStmt(%struct.TYPE_10__* %117, %struct.TYPE_11__* %118, i32 1)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @sqlite3_errmsg(i32 %125)
  %127 = call i32 @Tcl_NewStringObj(i32 %126, i32 -1)
  %128 = call i32 @Tcl_SetObjResult(i32 %122, i32 %127)
  %129 = load i32, i32* @TCL_ERROR, align 4
  store i32 %129, i32* %2, align 4
  br label %138

130:                                              ; preds = %86
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %133 = call i32 @dbReleaseStmt(%struct.TYPE_10__* %131, %struct.TYPE_11__* %132, i32 0)
  br label %134

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %134, %59
  br label %10

136:                                              ; preds = %23
  %137 = load i32, i32* @TCL_BREAK, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %136, %116, %76, %57
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @dbPrepareAndBind(%struct.TYPE_10__*, i8*, i8**, i64*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @dbEvalRowInfo(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i8* @sqlite3_stmt_status(i32*, i32, i32) #1

declare dso_local i32 @dbReleaseColumnNames(%struct.TYPE_12__*) #1

declare dso_local i32 @dbReleaseStmt(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @Tcl_SetObjResult(i32, i32) #1

declare dso_local i32 @Tcl_NewStringObj(i32, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
