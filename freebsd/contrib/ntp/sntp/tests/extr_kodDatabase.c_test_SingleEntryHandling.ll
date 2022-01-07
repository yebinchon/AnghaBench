; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_kodDatabase.c_test_SingleEntryHandling.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_kodDatabase.c_test_SingleEntryHandling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kod_entry = type { i32, i32 }

@__const.test_SingleEntryHandling.HOST = private unnamed_addr constant [10 x i8] c"192.0.2.5\00", align 1
@__const.test_SingleEntryHandling.REASON = private unnamed_addr constant [5 x i8] c"DENY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_SingleEntryHandling() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca [5 x i8], align 1
  %3 = alloca %struct.kod_entry*, align 8
  %4 = bitcast [10 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_SingleEntryHandling.HOST, i32 0, i32 0), i64 10, i1 false)
  %5 = bitcast [5 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_SingleEntryHandling.REASON, i32 0, i32 0), i64 5, i1 false)
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %7 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %8 = call i32 @add_entry(i8* %6, i8* %7)
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %10 = call i32 @search_entry(i8* %9, %struct.kod_entry** %3)
  %11 = call i32 @TEST_ASSERT_EQUAL(i32 1, i32 %10)
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %13 = load %struct.kod_entry*, %struct.kod_entry** %3, align 8
  %14 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* %12, i32 %15)
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %18 = load %struct.kod_entry*, %struct.kod_entry** %3, align 8
  %19 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* %17, i32 %20)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @add_entry(i8*, i8*) #2

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #2

declare dso_local i32 @search_entry(i8*, %struct.kod_entry**) #2

declare dso_local i32 @TEST_ASSERT_EQUAL_STRING(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
