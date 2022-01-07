; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-time.c_tsc_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-time.c_tsc_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_fixture = type { i32, i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet_tsc = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.time_fixture*)* @tsc_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc_null(%struct.time_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.time_fixture*, align 8
  %4 = alloca %struct.pt_packet_tsc, align 4
  %5 = alloca i32, align 4
  store %struct.time_fixture* %0, %struct.time_fixture** %3, align 8
  %6 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %6, i32 0, i32 0
  %8 = call i32 @pt_time_update_tsc(i32* null, %struct.pt_packet_tsc* %4, i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  %12 = call i32 @ptu_int_eq(i32 %9, i32 %11)
  %13 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %13, i32 0, i32 1
  %15 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %16 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %15, i32 0, i32 0
  %17 = call i32 @pt_time_update_tsc(i32* %14, %struct.pt_packet_tsc* null, i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @pte_internal, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i32 @ptu_int_eq(i32 %18, i32 %20)
  %22 = call i32 (...) @ptu_passed()
  %23 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  ret i32 %25
}

declare dso_local i32 @pt_time_update_tsc(i32*, %struct.pt_packet_tsc*, i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
