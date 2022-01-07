; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_add_twice.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_add_twice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { i32*, i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @add_twice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_twice(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %5 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %6 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %5, i32 0, i32 1
  %7 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pt_iscache_add(i32* %6, i32 %11, i64 0)
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ptu_int_gt(i32 %15, i32 0)
  %17 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %17, i32 0, i32 1
  %19 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %20 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pt_iscache_add(i32* %18, i32 %23, i64 0)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ptu_int_gt(i32 %27, i32 0)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ptu_int_eq(i32 %30, i32 %32)
  %34 = call i32 (...) @ptu_passed()
  %35 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local i32 @pt_iscache_add(i32*, i32, i64) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
