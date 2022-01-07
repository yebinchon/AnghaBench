; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_fixture = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_mapped_section = type opaque
%struct.pt_section = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_fixture*)* @read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read(%struct.test_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.test_fixture*, align 8
  %4 = alloca %struct.pt_mapped_section*, align 8
  %5 = alloca %struct.pt_section*, align 8
  %6 = alloca i32, align 4
  store %struct.test_fixture* %0, %struct.test_fixture** %3, align 8
  %7 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %7, i32 0, i32 1
  %9 = bitcast %struct.pt_mapped_section** %4 to %struct.pt_section**
  %10 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %10, i32 0, i32 2
  %12 = call i32 @pt_msec_cache_read(%struct.TYPE_2__* %8, %struct.pt_section** %9, i32* %11, i64 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ptu_int_eq(i32 %13, i32 0)
  %15 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %4, align 8
  %16 = bitcast %struct.pt_mapped_section* %15 to %struct.pt_section*
  %17 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @ptu_ptr_eq(%struct.pt_section* %16, i32* %19)
  %21 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %4, align 8
  %22 = bitcast %struct.pt_mapped_section* %21 to %struct.pt_section*
  %23 = call %struct.pt_section* @pt_msec_section(%struct.pt_section* %22)
  store %struct.pt_section* %23, %struct.pt_section** %5, align 8
  %24 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %25 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %26 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %25, i32 0, i32 0
  %27 = call i32 @ptu_ptr_eq(%struct.pt_section* %24, i32* %26)
  %28 = call i32 (...) @ptu_passed()
  %29 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

declare dso_local i32 @pt_msec_cache_read(%struct.TYPE_2__*, %struct.pt_section**, i32*, i64) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_ptr_eq(%struct.pt_section*, i32*) #1

declare dso_local %struct.pt_section* @pt_msec_section(%struct.pt_section*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
