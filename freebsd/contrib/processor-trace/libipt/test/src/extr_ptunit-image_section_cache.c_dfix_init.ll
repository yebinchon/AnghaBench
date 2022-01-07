; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_dfix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_dfix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.pt_section**, i32 }
%struct.pt_section = type { i32 }
%struct.ptunit_result = type { i32 }

@ptunit_thrd_init = common dso_local global i32 0, align 4
@num_sections = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"some-filename\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @dfix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfix_init(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_section*, align 8
  %6 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %7 = load i32, i32* @ptunit_thrd_init, align 4
  %8 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %8, i32 0, i32 1
  %10 = call i32 @ptu_test(i32 %7, i32* %9)
  %11 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %11, i32 0, i32 0
  %13 = load %struct.pt_section**, %struct.pt_section*** %12, align 8
  %14 = call i32 @memset(%struct.pt_section** %13, i32 0, i32 8)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %42, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @num_sections, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = srem i32 %20, 3
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 4096, i32 8192
  %25 = load i32, i32* %4, align 4
  %26 = srem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 4096, i32 8192
  %30 = call i32 @pt_mk_section(%struct.pt_section** %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ptu_int_eq(i32 %31, i32 0)
  %33 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %34 = call i32 @ptu_ptr(%struct.pt_section* %33)
  %35 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %36 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %36, i32 0, i32 0
  %38 = load %struct.pt_section**, %struct.pt_section*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pt_section*, %struct.pt_section** %38, i64 %40
  store %struct.pt_section* %35, %struct.pt_section** %41, align 8
  br label %42

42:                                               ; preds = %19
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %15

45:                                               ; preds = %15
  %46 = call i32 (...) @ptu_passed()
  %47 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  ret i32 %49
}

declare dso_local i32 @ptu_test(i32, i32*) #1

declare dso_local i32 @memset(%struct.pt_section**, i32, i32) #1

declare dso_local i32 @pt_mk_section(%struct.pt_section**, i8*, i32, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_ptr(%struct.pt_section*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
