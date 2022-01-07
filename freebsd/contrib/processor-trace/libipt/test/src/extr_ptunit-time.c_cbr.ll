; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-time.c_cbr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-time.c_cbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_fixture = type { i32, i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet_cbr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.time_fixture*)* @cbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbr(%struct.time_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.time_fixture*, align 8
  %4 = alloca %struct.pt_packet_cbr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.time_fixture* %0, %struct.time_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.pt_packet_cbr, %struct.pt_packet_cbr* %4, i32 0, i32 0
  store i32 56, i32* %7, align 4
  %8 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %8, i32 0, i32 0
  %10 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %10, i32 0, i32 1
  %12 = call i32 @pt_time_update_cbr(i32* %9, %struct.pt_packet_cbr* %4, i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ptu_int_eq(i32 %13, i32 0)
  %15 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %16 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %15, i32 0, i32 0
  %17 = call i32 @pt_time_query_cbr(i32* %5, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ptu_int_eq(i32 %18, i32 0)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ptu_uint_eq(i32 %20, i32 56)
  %22 = call i32 (...) @ptu_passed()
  %23 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  ret i32 %25
}

declare dso_local i32 @pt_time_update_cbr(i32*, %struct.pt_packet_cbr*, i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_time_query_cbr(i32*, i32*) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
