; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetProcessing.c_test_TooShortExtensionFieldLength.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetProcessing.c_test_TooShortExtensionFieldLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@testpkt = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@LEN_PKT_NOMAC = common dso_local global i32 0, align 4
@PACKET_UNUSEABLE = common dso_local global i32 0, align 4
@testsock = common dso_local global i32 0, align 4
@MODE_SERVER = common dso_local global i32 0, align 4
@testspkt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"UnitTest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_TooShortExtensionFieldLength() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @testpkt, i32 0, i32 0, i32 0), align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 7
  store i32* %4, i32** %1, align 8
  %5 = call i32 @htonl(i32 3)
  %6 = load i32*, i32** %1, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @LEN_PKT_NOMAC, align 4
  %8 = add nsw i32 %7, 4
  %9 = add nsw i32 %8, 24
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @PACKET_UNUSEABLE, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @MODE_SERVER, align 4
  %13 = call i32 @process_pkt(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @testpkt, i32 0, i32 0), i32* @testsock, i32 %11, i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @testspkt, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @TEST_ASSERT_EQUAL(i32 %10, i32 %13)
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @process_pkt(%struct.TYPE_6__*, i32*, i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
