; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_fixture = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_mapped_section = type { i32, i32 }
%struct.pt_section = type { i32, i32 }
%struct.pt_asid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_fixture*)* @fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill(%struct.test_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.test_fixture*, align 8
  %4 = alloca %struct.pt_mapped_section*, align 8
  %5 = alloca %struct.pt_section*, align 8
  %6 = alloca %struct.pt_asid, align 4
  %7 = alloca i32, align 4
  store %struct.test_fixture* %0, %struct.test_fixture** %3, align 8
  %8 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %8, i32 0, i32 1
  %10 = bitcast %struct.pt_mapped_section** %4 to %struct.pt_section**
  %11 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %11, i32 0, i32 2
  %13 = call i32 @pt_msec_cache_fill(%struct.TYPE_2__* %9, %struct.pt_section** %10, i32* %12, %struct.pt_asid* %6, i64 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @ptu_int_eq(i32 %14, i32 0)
  %16 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %4, align 8
  %17 = bitcast %struct.pt_mapped_section* %16 to %struct.pt_section*
  %18 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @ptu_ptr_eq(%struct.pt_section* %17, i32* %20)
  %22 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %4, align 8
  %23 = bitcast %struct.pt_mapped_section* %22 to %struct.pt_section*
  %24 = call %struct.pt_section* @pt_msec_section(%struct.pt_section* %23)
  store %struct.pt_section* %24, %struct.pt_section** %5, align 8
  %25 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %26 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %27 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %26, i32 0, i32 0
  %28 = call i32 @ptu_ptr_eq(%struct.pt_section* %25, i32* %27)
  %29 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %30 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ptu_uint_eq(i32 %31, i32 1)
  %33 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %34 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ptu_uint_eq(i32 %35, i32 1)
  %37 = call i32 (...) @ptu_passed()
  %38 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  ret i32 %40
}

declare dso_local i32 @pt_msec_cache_fill(%struct.TYPE_2__*, %struct.pt_section**, i32*, %struct.pt_asid*, i64) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_ptr_eq(%struct.pt_section*, i32*) #1

declare dso_local %struct.pt_section* @pt_msec_section(%struct.pt_section*) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
