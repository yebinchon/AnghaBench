; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellAuth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@shellAuth.azAction = internal global [34 x i8*] [i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"CREATE_INDEX\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"CREATE_TABLE\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"CREATE_TEMP_INDEX\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"CREATE_TEMP_TABLE\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"CREATE_TEMP_TRIGGER\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"CREATE_TEMP_VIEW\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"CREATE_TRIGGER\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"CREATE_VIEW\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"DROP_INDEX\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"DROP_TABLE\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"DROP_TEMP_INDEX\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"DROP_TEMP_TABLE\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"DROP_TEMP_TRIGGER\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"DROP_TEMP_VIEW\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"DROP_TRIGGER\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"DROP_VIEW\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"PRAGMA\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"TRANSACTION\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ATTACH\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"DETACH\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"ALTER_TABLE\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"REINDEX\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"ANALYZE\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"CREATE_VTABLE\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"DROP_VTABLE\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"FUNCTION\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"SAVEPOINT\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"RECURSIVE\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"authorizer: %s\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i8*, i8*)* @shellAuth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shellAuth(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [4 x i8*], align 16
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %13, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 0
  store i8* %18, i8** %19, align 16
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 1
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 2
  store i8* %22, i8** %23, align 16
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 3
  store i8* %24, i8** %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [34 x i8*], [34 x i8*]* @shellAuth.azAction, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @utf8_printf(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* %32)
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %62, %6
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @raw_printf(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @output_c_string(i32 %50, i8* %54)
  br label %61

56:                                               ; preds = %37
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @raw_printf(i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %47
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %34

65:                                               ; preds = %34
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @raw_printf(i32 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0))
  %70 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %70
}

declare dso_local i32 @utf8_printf(i32, i8*, i8*) #1

declare dso_local i32 @raw_printf(i32, i8*) #1

declare dso_local i32 @output_c_string(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
