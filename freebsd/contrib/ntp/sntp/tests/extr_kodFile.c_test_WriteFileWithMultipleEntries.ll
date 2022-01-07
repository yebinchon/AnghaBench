; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_kodFile.c_test_WriteFileWithMultipleEntries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_kodFile.c_test_WriteFileWithMultipleEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"kod-output-multiple\00", align 1
@kod_db_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"RATE\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"192.0.2.1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DENY\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"192.0.2.5\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"RSTR\00", align 1
@kod_db = common dso_local global %struct.TYPE_2__** null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"kod-expected-multiple\00", align 1
@INPUT_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_WriteFileWithMultipleEntries() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @estrdup(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* @kod_db_file, align 4
  %4 = call i32 @add_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %5 = call i32 @add_entry(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @add_entry(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %7 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kod_db, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %7, i64 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 43981, i32* %10, align 4
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kod_db, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 43981, i32* %14, align 4
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @kod_db, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 43981, i32* %18, align 4
  %19 = call i32 (...) @write_kod_db()
  %20 = load i32, i32* @kod_db_file, align 4
  %21 = call i32* @fopen(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %21, i32** %1, align 8
  %22 = load i32, i32* @INPUT_DIR, align 4
  %23 = call i32 @CreatePath(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %22)
  %24 = call i32* @fopen(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %24, i32** %2, align 8
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @TEST_ASSERT_NOT_NULL(i32* %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @TEST_ASSERT_NOT_NULL(i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @GetFileSize(i32* %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @GetFileSize(i32* %31)
  %33 = call i32 @TEST_ASSERT_EQUAL(i32 %30, i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @CompareFileContent(i32* %34, i32* %35)
  %37 = call i32 @TEST_ASSERT_TRUE(i32 %36)
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
