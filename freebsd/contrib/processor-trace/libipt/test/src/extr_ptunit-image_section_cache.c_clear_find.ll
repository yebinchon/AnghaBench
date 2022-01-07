; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_clear_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_clear_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { i32, %struct.pt_section** }
%struct.pt_section = type { i32, i32, i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @clear_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_find(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %8 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %8, i32 0, i32 1
  %10 = load %struct.pt_section**, %struct.pt_section*** %9, align 8
  %11 = getelementptr inbounds %struct.pt_section*, %struct.pt_section** %10, i64 0
  %12 = load %struct.pt_section*, %struct.pt_section** %11, align 8
  store %struct.pt_section* %12, %struct.pt_section** %4, align 8
  %13 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %14 = call i32 @ptu_ptr(%struct.pt_section* %13)
  %15 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %16 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %15, i32 0, i32 0
  %17 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %18 = call i32 @pt_iscache_add(i32* %16, %struct.pt_section* %17, i64 0)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ptu_int_gt(i32 %19, i32 0)
  %21 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %21, i32 0, i32 0
  %23 = call i32 @pt_iscache_clear(i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ptu_int_eq(i32 %24, i32 0)
  %26 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %27 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %26, i32 0, i32 0
  %28 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %29 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %32 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %35 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pt_iscache_find(i32* %27, i32 %30, i32 %33, i32 %36, i64 0)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ptu_int_eq(i32 %38, i32 0)
  %40 = call i32 (...) @ptu_passed()
  %41 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  ret i32 %43
}

declare dso_local i32 @ptu_ptr(%struct.pt_section*) #1

declare dso_local i32 @pt_iscache_add(i32*, %struct.pt_section*, i64) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @pt_iscache_clear(i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_iscache_find(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
