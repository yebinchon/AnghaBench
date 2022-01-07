; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sqlite3_expert_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sqlite3_expert_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c":memory:\00", align 1
@SQLITE_DBCONFIG_TRIGGER_EQP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"SELECT sql FROM sqlite_master WHERE name NOT LIKE 'sqlite_%%' AND sql NOT LIKE 'CREATE VIRTUAL %%'\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@idxAuthCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @sqlite3_expert_new(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i64 @idxMalloc(i32* %5, i32 24)
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SQLITE_OK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 100, i32* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = call i32 @sqlite3_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %15, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = call i32 @sqlite3_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SQLITE_DBCONFIG_TRIGGER_EQP, align 4
  %40 = call i32 @sqlite3_db_config(i32 %38, i32 %39, i32 1, i32* null)
  br label %41

41:                                               ; preds = %35, %28
  br label %42

42:                                               ; preds = %41, %24
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SQLITE_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i8**, i8*** %4, align 8
  %51 = call i32 @idxPrintfPrepareStmt(i32* %49, i32** %7, i8** %50, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0))
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %63, %46
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SQLITE_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i64, i64* @SQLITE_ROW, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i64 @sqlite3_step(i32* %58)
  %60 = icmp eq i64 %57, %59
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i1 [ false, %52 ], [ %60, %56 ]
  br i1 %62, label %63, label %73

63:                                               ; preds = %61
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @sqlite3_column_text(i32* %64, i32 0)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %8, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i8**, i8*** %4, align 8
  %72 = call i32 @sqlite3_exec(i32 %69, i8* %70, i32 0, i32 0, i8** %71)
  store i32 %72, i32* %5, align 4
  br label %52

73:                                               ; preds = %61
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @idxFinalize(i32* %5, i32* %74)
  br label %76

76:                                               ; preds = %73, %42
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @SQLITE_OK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = load i8**, i8*** %4, align 8
  %83 = call i32 @idxCreateVtabSchema(%struct.TYPE_5__* %81, i8** %82)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @SQLITE_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @idxAuthCallback, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = bitcast %struct.TYPE_5__* %93 to i8*
  %95 = call i32 @sqlite3_set_authorizer(i32 %91, i32 %92, i8* %94)
  br label %96

96:                                               ; preds = %88, %84
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SQLITE_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = call i32 @sqlite3_expert_destroy(%struct.TYPE_5__* %101)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %103

103:                                              ; preds = %100, %96
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %104
}

declare dso_local i64 @idxMalloc(i32*, i32) #1

declare dso_local i32 @sqlite3_open(i8*, i32*) #1

declare dso_local i32 @sqlite3_db_config(i32, i32, i32, i32*) #1

declare dso_local i32 @idxPrintfPrepareStmt(i32*, i32**, i8**, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_exec(i32, i8*, i32, i32, i8**) #1

declare dso_local i32 @idxFinalize(i32*, i32*) #1

declare dso_local i32 @idxCreateVtabSchema(%struct.TYPE_5__*, i8**) #1

declare dso_local i32 @sqlite3_set_authorizer(i32, i32, i8*) #1

declare dso_local i32 @sqlite3_expert_destroy(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
