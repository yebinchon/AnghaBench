; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_clear_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_clear_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { i32, i32* }
%struct.ptunit_result = type { i32 }
%struct.pt_section = type { i32 }

@pte_bad_image = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @clear_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_lookup(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %8 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %8, i32 0, i32 0
  %10 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pt_iscache_add(i32* %9, i32 %14, i64 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ptu_int_gt(i32 %16, i32 0)
  %18 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %18, i32 0, i32 0
  %20 = call i32 @pt_iscache_clear(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ptu_int_eq(i32 %21, i32 0)
  %23 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pt_iscache_lookup(i32* %24, %struct.pt_section** %4, i32* %5, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @pte_bad_image, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 @ptu_int_eq(i32 %27, i32 %29)
  %31 = call i32 (...) @ptu_passed()
  %32 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  ret i32 %34
}

declare dso_local i32 @pt_iscache_add(i32*, i32, i64) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @pt_iscache_clear(i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_iscache_lookup(i32*, %struct.pt_section**, i32*, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
