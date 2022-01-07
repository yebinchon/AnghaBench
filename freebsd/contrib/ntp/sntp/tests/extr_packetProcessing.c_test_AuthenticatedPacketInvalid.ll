; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetProcessing.c_test_AuthenticatedPacketInvalid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetProcessing.c_test_AuthenticatedPacketInvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"123456789\00", align 1
@AUTHENTICATION = common dso_local global i32 0, align 4
@LEN_PKT_NOMAC = common dso_local global i32 0, align 4
@testpkt = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MAX_MD5_LEN = common dso_local global i64 0, align 8
@KEY_MAC_LEN = common dso_local global i64 0, align 8
@key_ptr = common dso_local global i32 0, align 4
@SERVER_AUTH_FAIL = common dso_local global i32 0, align 4
@testsock = common dso_local global i32 0, align 4
@MODE_SERVER = common dso_local global i32 0, align 4
@testspkt = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"UnitTest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_AuthenticatedPacketInvalid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @PrepareAuthenticationTestMD5(i32 50, i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @AUTHENTICATION, align 4
  %5 = call i32 @ENABLED_OPT(i32 %4)
  %6 = call i32 @TEST_ASSERT_TRUE(i32 %5)
  %7 = load i32, i32* @LEN_PKT_NOMAC, align 4
  store i32 %7, i32* %1, align 4
  %8 = call i32 @htonl(i32 50)
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @testpkt, i32 0, i32 0, i32 0), align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i64, i64* @MAX_MD5_LEN, align 8
  %13 = load i64, i64* @KEY_MAC_LEN, align 8
  %14 = sub nsw i64 %12, %13
  %15 = load i32, i32* @key_ptr, align 4
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @testpkt, i32 0, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = call i32 @make_mac(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @testpkt, i32 0, i32 0), i32 %11, i64 %14, i32 %15, i32* %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 4, %19
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %1, align 4
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @testpkt, i32 0, i32 0, i32 0), align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @SERVER_AUTH_FAIL, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @MODE_SERVER, align 4
  %30 = call i32 @process_pkt(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @testpkt, i32 0, i32 0), i32* @testsock, i32 %28, i32 %29, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @testspkt, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @TEST_ASSERT_EQUAL(i32 %27, i32 %30)
  ret void
}

declare dso_local i32 @PrepareAuthenticationTestMD5(i32, i32, i8*) #1

declare dso_local i32 @TEST_ASSERT_TRUE(i32) #1

declare dso_local i32 @ENABLED_OPT(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @make_mac(%struct.TYPE_7__*, i32, i64, i32, i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @process_pkt(%struct.TYPE_7__*, i32*, i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
