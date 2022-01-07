; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetHandling.c_test_OffsetCalculationPositiveOffset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_packetHandling.c_test_OffsetCalculationPositiveOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt = type { i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.timeval = type { i32 }

@JAN_1970 = common dso_local global i64 0, align 8
@LEN_PKT_NOMAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_OffsetCalculationPositiveOffset() #0 {
  %1 = alloca %struct.pkt, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca %struct.timeval, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 0
  store i32 -16, i32* %8, align 8
  %9 = call i32 @DTOUFP(double 1.250000e-01)
  %10 = call i8* @HTONS_FP(i32 %9)
  %11 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 6
  store i8* %10, i8** %11, align 8
  %12 = call i32 @DTOUFP(double 2.500000e-01)
  %13 = call i8* @HTONS_FP(i32 %12)
  %14 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 5
  store i8* %13, i8** %14, align 8
  %15 = call i32 @get_systime(%struct.TYPE_5__* %2)
  %16 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 4
  %17 = call i32 @HTONL_FP(%struct.TYPE_5__* %2, i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 1000000000, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 3
  %21 = call i32 @HTONL_FP(%struct.TYPE_5__* %3, i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 1000000001, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i64 2147483648, i64* %23, align 8
  %24 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 2
  %25 = call i32 @HTONL_FP(%struct.TYPE_5__* %3, i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 1000000002, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.pkt, %struct.pkt* %1, i32 0, i32 1
  %29 = call i32 @HTONL_FP(%struct.TYPE_5__* %3, i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 1000000001, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = call i32 @TSTOTV(%struct.TYPE_5__* %3, %struct.timeval* %4)
  %33 = load i64, i64* @JAN_1970, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %33
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load i32, i32* @LEN_PKT_NOMAC, align 4
  %40 = call i32 @offset_calculation(%struct.pkt* %1, i32 %39, %struct.timeval* %4, double* %5, double* %6, double* %7)
  %41 = load double, double* %5, align 8
  %42 = call i32 @TEST_ASSERT_EQUAL_DOUBLE(double 1.250000e+00, double %41)
  %43 = call i32 @ULOGTOD(i32 16)
  %44 = sitofp i32 %43 to double
  %45 = fdiv double 1.000000e+00, %44
  %46 = load double, double* %6, align 8
  %47 = call i32 @TEST_ASSERT_EQUAL_DOUBLE(double %45, double %46)
  %48 = load double, double* %7, align 8
  %49 = call i32 @TEST_ASSERT_EQUAL_DOUBLE(double 0x3FF2000FBA8826AB, double %48)
  ret void
}

declare dso_local i8* @HTONS_FP(i32) #1

declare dso_local i32 @DTOUFP(double) #1

declare dso_local i32 @get_systime(%struct.TYPE_5__*) #1

declare dso_local i32 @HTONL_FP(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @TSTOTV(%struct.TYPE_5__*, %struct.timeval*) #1

declare dso_local i32 @offset_calculation(%struct.pkt*, i32, %struct.timeval*, double*, double*, double*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_DOUBLE(double, double) #1

declare dso_local i32 @ULOGTOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
