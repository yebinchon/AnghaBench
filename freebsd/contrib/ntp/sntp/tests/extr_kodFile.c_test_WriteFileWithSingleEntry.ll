; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_kodFile.c_test_WriteFileWithSingleEntry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_kodFile.c_test_WriteFileWithSingleEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"kod-output-single\00", align 1
@kod_db_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"host1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DENY\00", align 1
@kod_db = common dso_local global %struct.TYPE_2__** null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"kod-expected-single\00", align 1
@INPUT_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_WriteFileWithSingleEntry() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @estrdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* @kod_db_file, align 4
  %4 = call i32 @add_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %5 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kod_db, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %5, i64 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = call i32 (...) @write_kod_db()
  %10 = load i32, i32* @kod_db_file, align 4
  %11 = call i32* @fopen(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %11, i32** %1, align 8
  %12 = load i32, i32* @INPUT_DIR, align 4
  %13 = call i32 @CreatePath(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %12)
  %14 = call i32* @fopen(i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @TEST_ASSERT_NOT_NULL(i32* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @TEST_ASSERT_NOT_NULL(i32* %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @GetFileSize(i32* %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @GetFileSize(i32* %21)
  %23 = call i32 @TEST_ASSERT_EQUAL(i32 %20, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @CompareFileContent(i32* %24, i32* %25)
  %27 = call i32 @TEST_ASSERT_TRUE(i32 %26)
  ret void
}

declare dso_local i32 @estrdup(i8*) #1

declare dso_local i32 @add_entry(i8*, i8*) #1

declare dso_local i32 @write_kod_db(...) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @CreatePath(i8*, i32) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @GetFileSize(i32*) #1

declare dso_local i32 @TEST_ASSERT_TRUE(i32) #1

declare dso_local i32 @CompareFileContent(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
