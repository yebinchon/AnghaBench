; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetHandling.c_test_HandleKodDemobilize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetHandling.c_test_HandleKodDemobilize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kod_entry = type { i32 }

@test_HandleKodDemobilize.HOSTNAME = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [10 x i8] c"192.0.2.1\00", align 1
@test_HandleKodDemobilize.REASON = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"DENY\00", align 1
@KOD_DEMOBILIZE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_HandleKodDemobilize() #0 {
  %1 = alloca %struct.pkt, align 4
  %2 = alloca %struct.pkt, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.kod_entry*, align 8
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = load i32, i32* @KOD_DEMOBILIZE, align 4
  store i32 %7, i32* %3, align 4
  %8 = bitcast { i64, i32 }* %5 to i8*
  %9 = bitcast %struct.pkt* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  %11 = load i64, i64* %10, align 4
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ZERO(i64 %11, i32 %13)
  %15 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 1
  %16 = load i8*, i8** @test_HandleKodDemobilize.REASON, align 8
  %17 = call i32 @memcpy(i32* %15, i8* %16, i32 4)
  %18 = bitcast { i64, i32 }* %6 to i8*
  %19 = bitcast %struct.pkt* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 4
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ZERO(i64 %21, i32 %23)
  %25 = load i32, i32* @AF_INET, align 4
  %26 = getelementptr inbounds %struct.pkt, %struct.pkt* %2, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i8*, i8** @test_HandleKodDemobilize.HOSTNAME, align 8
  %29 = call i32 @inet_addr(i8* %28)
  %30 = getelementptr inbounds %struct.pkt, %struct.pkt* %2, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @kod_init_kod_db(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i8*, i8** @test_HandleKodDemobilize.HOSTNAME, align 8
  %37 = call i32 @handle_pkt(i32 %35, %struct.pkt* %1, %struct.pkt* %2, i8* %36)
  %38 = call i32 @TEST_ASSERT_EQUAL(i32 1, i32 %37)
  %39 = load i8*, i8** @test_HandleKodDemobilize.HOSTNAME, align 8
  %40 = call i32 @search_entry(i8* %39, %struct.kod_entry** %4)
  %41 = call i32 @TEST_ASSERT_EQUAL(i32 1, i32 %40)
  %42 = load i8*, i8** @test_HandleKodDemobilize.REASON, align 8
  %43 = load %struct.kod_entry*, %struct.kod_entry** %4, align 8
  %44 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @TEST_ASSERT_EQUAL_MEMORY(i8* %42, i32 %45, i32 4)
  ret void
}

declare dso_local i32 @ZERO(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @kod_init_kod_db(i8*, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @handle_pkt(i32, %struct.pkt*, %struct.pkt*, i8*) #1

declare dso_local i32 @search_entry(i8*, %struct.kod_entry**) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_MEMORY(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
