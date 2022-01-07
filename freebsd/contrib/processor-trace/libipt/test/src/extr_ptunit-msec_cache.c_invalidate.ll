; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_invalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_fixture = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_section = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_fixture*)* @invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate(%struct.test_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.test_fixture*, align 8
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i32, align 4
  store %struct.test_fixture* %0, %struct.test_fixture** %3, align 8
  %6 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %6, i32 0, i32 1
  %8 = call i32 @pt_msec_cache_invalidate(%struct.TYPE_4__* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ptu_int_eq(i32 %9, i32 0)
  %11 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call %struct.pt_section* @pt_msec_section(i32* %13)
  store %struct.pt_section* %14, %struct.pt_section** %4, align 8
  %15 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %16 = call i32 @ptu_null(%struct.pt_section* %15)
  %17 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ptu_uint_eq(i32 %20, i32 0)
  %22 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %23 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ptu_uint_eq(i32 %25, i32 0)
  %27 = call i32 (...) @ptu_passed()
  %28 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  ret i32 %30
}

declare dso_local i32 @pt_msec_cache_invalidate(%struct.TYPE_4__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local %struct.pt_section* @pt_msec_section(i32*) #1

declare dso_local i32 @ptu_null(%struct.pt_section*) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
