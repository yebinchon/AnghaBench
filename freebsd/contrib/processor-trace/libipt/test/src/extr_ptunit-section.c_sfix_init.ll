; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_sfix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_sfix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { i32, i32*, i32*, i32* }
%struct.ptunit_result = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@ptunit_thrd_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*)* @sfix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfix_init(%struct.section_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.section_fixture*, align 8
  %4 = alloca i32, align 4
  store %struct.section_fixture* %0, %struct.section_fixture** %3, align 8
  %5 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %6 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %5, i32 0, i32 3
  store i32* null, i32** %6, align 8
  %7 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %7, i32 0, i32 2
  store i32* null, i32** %8, align 8
  %9 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %10 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %11, i32 0, i32 2
  %13 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %13, i32 0, i32 1
  %15 = call i32 @ptunit_mkfile(i32** %12, i32** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ptu_int_eq(i32 %16, i32 0)
  %18 = load i32, i32* @ptunit_thrd_init, align 4
  %19 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %20 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %19, i32 0, i32 0
  %21 = call i32 @ptu_test(i32 %18, i32* %20)
  %22 = call i32 (...) @ptu_passed()
  %23 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  ret i32 %25
}

declare dso_local i32 @ptunit_mkfile(i32**, i32**, i8*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_test(i32, i32*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
