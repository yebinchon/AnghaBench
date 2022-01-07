; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_bind_prepared_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_bind_prepared_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"sqlite_parameters\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@SQLITE_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"SELECT value FROM temp.sqlite_parameters WHERE key=?1\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"?%d\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @bind_prepared_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bind_prepared_stmt(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [30 x i8], align 16
  %10 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @sqlite3_bind_parameter_count(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %79

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @sqlite3_table_column_metadata(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0)
  %21 = load i64, i64* @SQLITE_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %79

24:                                               ; preds = %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sqlite3_prepare_v2(i32 %27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 -1, i32** %8, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %24
  br label %79

35:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %73, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @sqlite3_bind_parameter_name(i32* %41, i32 %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @sqlite3_snprintf(i32 30, i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  store i8* %50, i8** %10, align 8
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i32*, i32** %8, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* @SQLITE_STATIC, align 4
  %55 = call i32 @sqlite3_bind_text(i32* %52, i32 1, i8* %53, i32 -1, i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = call i64 @sqlite3_step(i32* %56)
  %58 = load i64, i64* @SQLITE_ROW, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @sqlite3_column_value(i32* %63, i32 0)
  %65 = call i32 @sqlite3_bind_value(i32* %61, i32 %62, i32 %64)
  br label %70

66:                                               ; preds = %51
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @sqlite3_bind_null(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @sqlite3_reset(i32* %71)
  br label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %36

76:                                               ; preds = %36
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @sqlite3_finalize(i32* %77)
  br label %79

79:                                               ; preds = %76, %34, %23, %15
  ret void
}

declare dso_local i32 @sqlite3_bind_parameter_count(i32*) #1

declare dso_local i64 @sqlite3_table_column_metadata(i32, i8*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32) #1

declare dso_local i8* @sqlite3_bind_parameter_name(i32*, i32) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_bind_value(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_column_value(i32*, i32) #1

declare dso_local i32 @sqlite3_bind_null(i32*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
