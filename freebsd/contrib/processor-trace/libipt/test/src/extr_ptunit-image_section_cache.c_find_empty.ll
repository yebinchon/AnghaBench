; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_find_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_find_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { i32, %struct.pt_section** }
%struct.pt_section = type { i32, i32, i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @find_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_empty(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %6 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %6, i32 0, i32 1
  %8 = load %struct.pt_section**, %struct.pt_section*** %7, align 8
  %9 = getelementptr inbounds %struct.pt_section*, %struct.pt_section** %8, i64 0
  %10 = load %struct.pt_section*, %struct.pt_section** %9, align 8
  store %struct.pt_section* %10, %struct.pt_section** %4, align 8
  %11 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %12 = call i32 @ptu_ptr(%struct.pt_section* %11)
  %13 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %13, i32 0, i32 0
  %15 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %16 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %19 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %22 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pt_iscache_find(i32* %14, i32 %17, i32 %20, i32 %23, i64 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ptu_int_eq(i32 %25, i32 0)
  %27 = call i32 (...) @ptu_passed()
  %28 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  ret i32 %30
}

declare dso_local i32 @ptu_ptr(%struct.pt_section*) #1

declare dso_local i32 @pt_iscache_find(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
