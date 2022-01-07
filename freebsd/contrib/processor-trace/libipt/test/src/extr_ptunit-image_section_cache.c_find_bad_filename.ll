; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_find_bad_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_find_bad_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { i32, %struct.pt_section** }
%struct.pt_section = type { i32, i32 }
%struct.ptunit_result = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"bad-filename\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @find_bad_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_bad_filename(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %7 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %7, i32 0, i32 1
  %9 = load %struct.pt_section**, %struct.pt_section*** %8, align 8
  %10 = getelementptr inbounds %struct.pt_section*, %struct.pt_section** %9, i64 0
  %11 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  store %struct.pt_section* %11, %struct.pt_section** %4, align 8
  %12 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %13 = call i32 @ptu_ptr(%struct.pt_section* %12)
  %14 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %14, i32 0, i32 0
  %16 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %17 = call i32 @pt_iscache_add(i32* %15, %struct.pt_section* %16, i64 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ptu_int_gt(i32 %18, i32 0)
  %20 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %21 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %20, i32 0, i32 0
  %22 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %23 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %26 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pt_iscache_find(i32* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i64 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ptu_int_eq(i32 %29, i32 0)
  %31 = call i32 (...) @ptu_passed()
  %32 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  ret i32 %34
}

declare dso_local i32 @ptu_ptr(%struct.pt_section*) #1

declare dso_local i32 @pt_iscache_add(i32*, %struct.pt_section*, i64) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @pt_iscache_find(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
