; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-time.c_tsc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-time.c_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_fixture = type { i32, i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet_tsc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.time_fixture*)* @tsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc(%struct.time_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.time_fixture*, align 8
  %4 = alloca %struct.pt_packet_tsc, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.time_fixture* %0, %struct.time_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.pt_packet_tsc, %struct.pt_packet_tsc* %4, i32 0, i32 0
  store i32 -555819298, i32* %9, align 4
  %10 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %10, i32 0, i32 0
  %12 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %12, i32 0, i32 1
  %14 = call i32 @pt_time_update_tsc(i32* %11, %struct.pt_packet_tsc* %4, i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ptu_int_eq(i32 %15, i32 0)
  %17 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %17, i32 0, i32 0
  %19 = call i32 @pt_time_query_tsc(i32* %5, i32* %6, i32* %7, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ptu_int_eq(i32 %20, i32 0)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ptu_uint_eq(i32 %22, i32 -555819298)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ptu_uint_eq(i32 %24, i32 0)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ptu_uint_eq(i32 %26, i32 0)
  %28 = call i32 (...) @ptu_passed()
  %29 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

declare dso_local i32 @pt_time_update_tsc(i32*, %struct.pt_packet_tsc*, i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_time_query_tsc(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
