; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_runOneSqlLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_runOneSqlLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@SHFLG_Backslash = common dso_local global i32 0, align 4
@SHELL_PROGRESS_RESET = common dso_local global i32 0, align 4
@BEGIN_TIMER = common dso_local global i32 0, align 4
@END_TIMER = common dso_local global i32 0, align 4
@stdin_is_interactive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Error: near line %d:\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@SHFLG_CountChanges = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"changes: %3d   total_changes: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32*, i32)* @runOneSqlLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runOneSqlLine(%struct.TYPE_6__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [100 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = call i32 @open_db(%struct.TYPE_6__* %13, i32 0)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = load i32, i32* @SHFLG_Backslash, align 4
  %17 = call i64 @ShellHasFlag(%struct.TYPE_6__* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @resolve_backslashes(i8* %20)
  br label %22

22:                                               ; preds = %19, %4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SHELL_PROGRESS_RESET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* @BEGIN_TIMER, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @shell_exec(%struct.TYPE_6__* %34, i8* %35, i8** %11)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @END_TIMER, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %75

43:                                               ; preds = %40, %32
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @stdin_is_interactive, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46, %43
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 100, i8* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %56

53:                                               ; preds = %46
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %55 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 100, i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i8*, i8** %11, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @utf8_printf(i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %61, i8* %62)
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @sqlite3_free(i8* %64)
  store i8* null, i8** %11, align 8
  br label %74

66:                                               ; preds = %56
  %67 = load i32, i32* @stderr, align 4
  %68 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @sqlite3_errmsg(i32 %71)
  %73 = call i32 @utf8_printf(i32 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %72)
  br label %74

74:                                               ; preds = %66, %59
  store i32 1, i32* %5, align 4
  br label %95

75:                                               ; preds = %40
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = load i32, i32* @SHFLG_CountChanges, align 4
  %78 = call i64 @ShellHasFlag(%struct.TYPE_6__* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sqlite3_changes(i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @sqlite3_total_changes(i32 %90)
  %92 = call i32 @raw_printf(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %91)
  br label %93

93:                                               ; preds = %80, %75
  br label %94

94:                                               ; preds = %93
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %74
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @open_db(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ShellHasFlag(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @resolve_backslashes(i8*) #1

declare dso_local i32 @shell_exec(%struct.TYPE_6__*, i8*, i8**) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @utf8_printf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_errmsg(i32) #1

declare dso_local i32 @raw_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_changes(i32) #1

declare dso_local i32 @sqlite3_total_changes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
