; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellFkeyCollateClause.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellFkeyCollateClause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c" COLLATE %s\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @shellFkeyCollateClause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shellFkeyCollateClause(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @sqlite3_context_db_handle(i32* %16)
  store i32* %17, i32** %7, align 8
  store i8* null, i8** %13, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 4
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @sqlite3_value_text(i32* %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %8, align 8
  %27 = load i32**, i32*** %6, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @sqlite3_value_text(i32* %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %9, align 8
  %32 = load i32**, i32*** %6, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @sqlite3_value_text(i32* %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %11, align 8
  %37 = load i32**, i32*** %6, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @sqlite3_value_text(i32* %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %12, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @SQLITE_STATIC, align 4
  %44 = call i32 @sqlite3_result_text(i32* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 -1, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @sqlite3_table_column_metadata(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %46, i8* %47, i32 0, i8** %10, i32 0, i32 0, i32 0)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %3
  %53 = load i32*, i32** %7, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @sqlite3_table_column_metadata(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %54, i8* %55, i32 0, i8** %13, i32 0, i32 0, i32 0)
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %52, %3
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @SQLITE_OK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i64 @sqlite3_stricmp(i8* %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  store i8* %68, i8** %15, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %72 = call i32 @sqlite3_result_text(i32* %69, i8* %70, i32 -1, i32 %71)
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @sqlite3_free(i8* %73)
  br label %75

75:                                               ; preds = %66, %61, %57
  ret void
}

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_table_column_metadata(i32*, i8*, i8*, i8*, i32, i8**, i32, i32, i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
