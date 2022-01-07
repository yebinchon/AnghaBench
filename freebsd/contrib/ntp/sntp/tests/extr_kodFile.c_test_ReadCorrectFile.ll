; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_kodFile.c_test_ReadCorrectFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_kodFile.c_test_ReadCorrectFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kod_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"kod-test-correct\00", align 1
@INPUT_DIR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@kod_db_cnt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"192.0.2.5\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DENY\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"192.0.2.100\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"RSTR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ReadCorrectFile() #0 {
  %1 = alloca %struct.kod_entry*, align 8
  %2 = load i32, i32* @INPUT_DIR, align 4
  %3 = call i32 @CreatePath(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = load i32, i32* @TRUE, align 4
  %5 = call i32 @kod_init_kod_db(i32 %3, i32 %4)
  %6 = load i32, i32* @kod_db_cnt, align 4
  %7 = call i32 @TEST_ASSERT_EQUAL(i32 2, i32 %6)
  %8 = call i32 @search_entry(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.kod_entry** %1)
  %9 = call i32 @TEST_ASSERT_EQUAL(i32 1, i32 %8)
  %10 = load %struct.kod_entry*, %struct.kod_entry** %1, align 8
  %11 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %14 = load %struct.kod_entry*, %struct.kod_entry** %1, align 8
  %15 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.kod_entry*, %struct.kod_entry** %1, align 8
  %19 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @TEST_ASSERT_EQUAL(i32 305419896, i32 %20)
  %22 = call i32 @search_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.kod_entry** %1)
  %23 = call i32 @TEST_ASSERT_EQUAL(i32 1, i32 %22)
  %24 = load %struct.kod_entry*, %struct.kod_entry** %1, align 8
  %25 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = load %struct.kod_entry*, %struct.kod_entry** %1, align 8
  %29 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.kod_entry*, %struct.kod_entry** %1, align 8
  %33 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @TEST_ASSERT_EQUAL(i32 4095, i32 %34)
  ret void
}

declare dso_local i32 @kod_init_kod_db(i32, i32) #1

declare dso_local i32 @CreatePath(i8*, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @search_entry(i8*, %struct.kod_entry**) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_STRING(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
