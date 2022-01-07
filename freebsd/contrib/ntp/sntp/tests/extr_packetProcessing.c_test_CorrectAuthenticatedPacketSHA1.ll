; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetProcessing.c_test_CorrectAuthenticatedPacketSHA1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetProcessing.c_test_CorrectAuthenticatedPacketSHA1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"abcdefghijklmno\00", align 1
@AUTHENTICATION = common dso_local global i32 0, align 4
@LEN_PKT_NOMAC = common dso_local global i32 0, align 4
@testpkt = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MAX_MDG_LEN = common dso_local global i32 0, align 4
@key_ptr = common dso_local global i32 0, align 4
@KEY_MAC_LEN = common dso_local global i64 0, align 8
@testsock = common dso_local global i32 0, align 4
@MODE_SERVER = common dso_local global i32 0, align 4
@testspkt = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"UnitTest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_CorrectAuthenticatedPacketSHA1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @PrepareAuthenticationTest(i32 20, i32 15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @AUTHENTICATION, align 4
  %5 = call i32 @ENABLED_OPT(i32 %4)
  %6 = call i32 @TEST_ASSERT_TRUE(i32 %5)
  %7 = load i32, i32* @LEN_PKT_NOMAC, align 4
  store i32 %7, i32* %1, align 4
  %8 = call i32 @htonl(i32 20)
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @testpkt, i32 0, i32 0, i32 0), align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @MAX_MDG_LEN, align 4
  %13 = load i32, i32* @key_ptr, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @testpkt, i32 0, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = call i32 @make_mac(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @testpkt, i32 0, i32 0), i32 %11, i32 %12, i32 %13, i32* %15)
  store i32 %16, i32* %2, align 4
  %17 = load i64, i64* @KEY_MAC_LEN, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @MODE_SERVER, align 4
  %28 = call i32 @process_pkt(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @testpkt, i32 0, i32 0), i32* @testsock, i32 %26, i32 %27, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @testspkt, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @TEST_ASSERT_EQUAL(i32 %25, i32 %28)
  ret void
}

declare dso_local i32 @PrepareAuthenticationTest(i32, i32, i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_TRUE(i32) #1

declare dso_local i32 @ENABLED_OPT(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @make_mac(%struct.TYPE_7__*, i32, i32, i32, i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @process_pkt(%struct.TYPE_7__*, i32*, i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
