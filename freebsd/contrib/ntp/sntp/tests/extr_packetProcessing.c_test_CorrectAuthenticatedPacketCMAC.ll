; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetProcessing.c_test_CorrectAuthenticatedPacketCMAC.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetProcessing.c_test_CorrectAuthenticatedPacketCMAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"OpenSSL CMAC not used, skipping...\00", align 1
@AUTHENTICATION = common dso_local global i32 0, align 4
@CMAC = common dso_local global i32 0, align 4
@CMAC_LENGTH = common dso_local global i32 0, align 4
@LEN_PKT_NOMAC = common dso_local global i32 0, align 4
@MAX_MAC_LEN = common dso_local global i32 0, align 4
@MODE_SERVER = common dso_local global i32 0, align 4
@key_ptr = common dso_local global i32 0, align 4
@testpkt = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@testsock = common dso_local global i32 0, align 4
@testspkt = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_CorrectAuthenticatedPacketCMAC() #0 {
  %1 = call i32 @TEST_IGNORE_MESSAGE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TEST_IGNORE_MESSAGE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
