; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetHandling.c_test_GenerateUnauthenticatedPacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetHandling.c_test_GenerateUnauthenticatedPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt = type { i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@JAN_1970 = common dso_local global i64 0, align 8
@LEN_PKT_NOMAC = common dso_local global i32 0, align 4
@LEAP_NOTINSYNC = common dso_local global i32 0, align 4
@NTP_VERSION = common dso_local global i32 0, align 4
@MODE_CLIENT = common dso_local global i32 0, align 4
@STRATUM_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_GenerateUnauthenticatedPacket() #0 {
  %1 = alloca %struct.pkt, align 4
  %2 = alloca %struct.timeval, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @GETTIMEOFDAY(%struct.timeval* %2, i32* null)
  %6 = load i64, i64* @JAN_1970, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, %6
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @LEN_PKT_NOMAC, align 4
  %13 = call i32 @generate_pkt(%struct.pkt* %1, %struct.timeval* %2, i32 0, i32* null)
  %14 = call i32 @TEST_ASSERT_EQUAL(i32 %12, i32 %13)
  %15 = load i32, i32* @LEAP_NOTINSYNC, align 4
  %16 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PKT_LEAP(i32 %17)
  %19 = call i32 @TEST_ASSERT_EQUAL(i32 %15, i32 %18)
  %20 = load i32, i32* @NTP_VERSION, align 4
  %21 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PKT_VERSION(i32 %22)
  %24 = call i32 @TEST_ASSERT_EQUAL(i32 %20, i32 %23)
  %25 = load i32, i32* @MODE_CLIENT, align 4
  %26 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PKT_MODE(i32 %27)
  %29 = call i32 @TEST_ASSERT_EQUAL(i32 %25, i32 %28)
  %30 = load i32, i32* @STRATUM_UNSPEC, align 4
  %31 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PKT_TO_STRATUM(i32 %32)
  %34 = call i32 @TEST_ASSERT_EQUAL(i32 %30, i32 %33)
  %35 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @TEST_ASSERT_EQUAL(i32 8, i32 %36)
  %38 = call i32 @TVTOTS(%struct.timeval* %2, i32* %3)
  %39 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 0
  %40 = call i32 @NTOHL_FP(i32* %39, i32* %4)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @LfpEquality(i32 %41, i32 %42)
  %44 = call i32 @TEST_ASSERT_TRUE(i32 %43)
  ret void
}

declare dso_local i32 @GETTIMEOFDAY(%struct.timeval*, i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @generate_pkt(%struct.pkt*, %struct.timeval*, i32, i32*) #1

declare dso_local i32 @PKT_LEAP(i32) #1

declare dso_local i32 @PKT_VERSION(i32) #1

declare dso_local i32 @PKT_MODE(i32) #1

declare dso_local i32 @PKT_TO_STRATUM(i32) #1

declare dso_local i32 @TVTOTS(%struct.timeval*, i32*) #1

declare dso_local i32 @NTOHL_FP(i32*, i32*) #1

declare dso_local i32 @TEST_ASSERT_TRUE(i32) #1

declare dso_local i32 @LfpEquality(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
