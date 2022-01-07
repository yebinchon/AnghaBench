; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_sfix_write_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_sfix_write_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*, i32*, i64)* @sfix_write_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfix_write_aux(%struct.section_fixture* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ptunit_result, align 4
  %5 = alloca %struct.section_fixture*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.section_fixture* %0, %struct.section_fixture** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.section_fixture*, %struct.section_fixture** %5, align 8
  %12 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @fwrite(i32* %9, i32 1, i64 %10, i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @ptu_uint_eq(i64 %15, i64 %16)
  %18 = load %struct.section_fixture*, %struct.section_fixture** %5, align 8
  %19 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fflush(i32 %20)
  %22 = call i32 (...) @ptu_passed()
  %23 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  ret i32 %25
}

declare dso_local i64 @fwrite(i32*, i32, i64, i32) #1

declare dso_local i32 @ptu_uint_eq(i64, i64) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
