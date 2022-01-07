; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_utilities.c_test_SetLiVnMode1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_utilities.c_test_SetLiVnMode1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt = type { i32 }

@LEAP_NOWARNING = common dso_local global i32 0, align 4
@NTP_VERSION = common dso_local global i32 0, align 4
@MODE_SERVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_SetLiVnMode1() #0 {
  %1 = alloca %struct.pkt, align 4
  %2 = alloca %struct.pkt, align 4
  %3 = load i32, i32* @LEAP_NOWARNING, align 4
  %4 = load i32, i32* @NTP_VERSION, align 4
  %5 = load i32, i32* @MODE_SERVER, align 4
  %6 = call i32 @PKT_LI_VN_MODE(i32 %3, i32 %4, i32 %5)
  %7 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @LEAP_NOWARNING, align 4
  %9 = load i32, i32* @NTP_VERSION, align 4
  %10 = load i32, i32* @MODE_SERVER, align 4
  %11 = call i32 @set_li_vn_mode(%struct.pkt* %2, i32 %8, i32 %9, i32 %10)
  %12 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.pkt, %struct.pkt* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @TEST_ASSERT_EQUAL(i32 %13, i32 %15)
  ret void
}

declare dso_local i32 @PKT_LI_VN_MODE(i32, i32, i32) #1

declare dso_local i32 @set_li_vn_mode(%struct.pkt*, i32, i32, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
