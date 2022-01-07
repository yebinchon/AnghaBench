; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_kodDatabase.c_test_MultipleEntryHandling.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_kodDatabase.c_test_MultipleEntryHandling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kod_entry = type { i32, i32 }

@__const.test_MultipleEntryHandling.HOST1 = private unnamed_addr constant [10 x i8] c"192.0.2.3\00", align 1
@__const.test_MultipleEntryHandling.REASON1 = private unnamed_addr constant [5 x i8] c"DENY\00", align 1
@__const.test_MultipleEntryHandling.HOST2 = private unnamed_addr constant [10 x i8] c"192.0.5.5\00", align 1
@__const.test_MultipleEntryHandling.REASON2 = private unnamed_addr constant [5 x i8] c"RATE\00", align 1
@__const.test_MultipleEntryHandling.HOST3 = private unnamed_addr constant [11 x i8] c"192.0.10.1\00", align 1
@__const.test_MultipleEntryHandling.REASON3 = private unnamed_addr constant [5 x i8] c"DENY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_MultipleEntryHandling() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca [5 x i8], align 1
  %3 = alloca [10 x i8], align 1
  %4 = alloca [5 x i8], align 1
  %5 = alloca [11 x i8], align 1
  %6 = alloca [5 x i8], align 1
  %7 = alloca %struct.kod_entry*, align 8
  %8 = bitcast [10 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_MultipleEntryHandling.HOST1, i32 0, i32 0), i64 10, i1 false)
  %9 = bitcast [5 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_MultipleEntryHandling.REASON1, i32 0, i32 0), i64 5, i1 false)
  %10 = bitcast [10 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_MultipleEntryHandling.HOST2, i32 0, i32 0), i64 10, i1 false)
  %11 = bitcast [5 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_MultipleEntryHandling.REASON2, i32 0, i32 0), i64 5, i1 false)
  %12 = bitcast [11 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_MultipleEntryHandling.HOST3, i32 0, i32 0), i64 11, i1 false)
  %13 = bitcast [5 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_MultipleEntryHandling.REASON3, i32 0, i32 0), i64 5, i1 false)
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %16 = call i32 @add_entry(i8* %14, i8* %15)
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %19 = call i32 @add_entry(i8* %17, i8* %18)
  %20 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %22 = call i32 @add_entry(i8* %20, i8* %21)
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %24 = call i32 @search_entry(i8* %23, %struct.kod_entry** %7)
  %25 = call i32 @TEST_ASSERT_EQUAL(i32 1, i32 %24)
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %27 = load %struct.kod_entry*, %struct.kod_entry** %7, align 8
  %28 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* %26, i32 %29)
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %32 = load %struct.kod_entry*, %struct.kod_entry** %7, align 8
  %33 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* %31, i32 %34)
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %37 = call i32 @search_entry(i8* %36, %struct.kod_entry** %7)
  %38 = call i32 @TEST_ASSERT_EQUAL(i32 1, i32 %37)
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %40 = load %struct.kod_entry*, %struct.kod_entry** %7, align 8
  %41 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* %39, i32 %42)
  %44 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %45 = load %struct.kod_entry*, %struct.kod_entry** %7, align 8
  %46 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* %44, i32 %47)
  %49 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %50 = call i32 @search_entry(i8* %49, %struct.kod_entry** %7)
  %51 = call i32 @TEST_ASSERT_EQUAL(i32 1, i32 %50)
  %52 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %53 = load %struct.kod_entry*, %struct.kod_entry** %7, align 8
  %54 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* %52, i32 %55)
  %57 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %58 = load %struct.kod_entry*, %struct.kod_entry** %7, align 8
  %59 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* %57, i32 %60)
  %62 = load %struct.kod_entry*, %struct.kod_entry** %7, align 8
  %63 = call i32 @free(%struct.kod_entry* %62)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @add_entry(i8*, i8*) #2

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #2

declare dso_local i32 @search_entry(i8*, %struct.kod_entry**) #2

declare dso_local i32 @TEST_ASSERT_EQUAL_STRING(i8*, i32) #2

declare dso_local i32 @free(%struct.kod_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
