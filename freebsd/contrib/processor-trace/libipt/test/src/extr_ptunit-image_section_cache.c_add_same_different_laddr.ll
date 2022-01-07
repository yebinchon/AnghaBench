; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_add_same_different_laddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_add_same_different_laddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @add_same_different_laddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_same_different_laddr(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %5 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %6 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %5, i32 0, i32 1
  %7 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @pt_iscache_add(i32* %6, %struct.TYPE_2__* %11, i64 0)
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ptu_int_gt(i32 %15, i32 0)
  %17 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %23, i32* %29, align 4
  %30 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %31 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %38 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %36, i32* %42, align 4
  %43 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %44 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %43, i32 0, i32 1
  %45 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %46 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 @pt_iscache_add(i32* %44, %struct.TYPE_2__* %49, i64 1)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ptu_int_gt(i32 %53, i32 0)
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ptu_int_ne(i32 %56, i32 %58)
  %60 = call i32 (...) @ptu_passed()
  %61 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  ret i32 %63
}

declare dso_local i32 @pt_iscache_add(i32*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @ptu_int_ne(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
