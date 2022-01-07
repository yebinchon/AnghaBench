; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_utilities.c_test_PktOutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_utilities.c_test_PktOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"debug-output-pkt\00", align 1
@LEAP_NOWARNING = common dso_local global i32 0, align 4
@NTP_VERSION = common dso_local global i32 0, align 4
@MODE_SERVER = common dso_local global i32 0, align 4
@LEN_PKT_NOMAC = common dso_local global i32 0, align 4
@outputFile = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"debug-input-pkt\00", align 1
@INPUT_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_PktOutput() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.pkt, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @InitDebugTest(i8* %4)
  %6 = call i32 @memset(%struct.pkt* %2, i32 0, i32 8)
  %7 = load i32, i32* @LEAP_NOWARNING, align 4
  %8 = load i32, i32* @NTP_VERSION, align 4
  %9 = load i32, i32* @MODE_SERVER, align 4
  %10 = call i32 @PKT_LI_VN_MODE(i32 %7, i32 %8, i32 %9)
  %11 = getelementptr inbounds %struct.pkt, %struct.pkt* %2, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 8, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 2147483647, i32* %13, align 4
  %14 = getelementptr inbounds %struct.pkt, %struct.pkt* %2, i32 0, i32 0
  %15 = call i32 @HTONL_FP(%struct.TYPE_3__* %3, i32* %14)
  %16 = load i32, i32* @LEN_PKT_NOMAC, align 4
  %17 = load i32, i32* @outputFile, align 4
  %18 = call i32 @pkt_output(%struct.pkt* %2, i32 %16, i32 %17)
  %19 = load i32, i32* @INPUT_DIR, align 4
  %20 = call i32 @CreatePath(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @FinishDebugTest(i32 %20, i8* %21)
  ret void
}

declare dso_local i32 @InitDebugTest(i8*) #1

declare dso_local i32 @memset(%struct.pkt*, i32, i32) #1

declare dso_local i32 @PKT_LI_VN_MODE(i32, i32, i32) #1

declare dso_local i32 @HTONL_FP(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @pkt_output(%struct.pkt*, i32, i32) #1

declare dso_local i32 @FinishDebugTest(i32, i8*) #1

declare dso_local i32 @CreatePath(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
