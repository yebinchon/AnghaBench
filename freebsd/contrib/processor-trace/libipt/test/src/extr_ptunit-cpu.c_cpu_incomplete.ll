; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-cpu.c_cpu_incomplete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-cpu.c_cpu_incomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_cpu = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pte_invalid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"6/\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"6//2\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpu_incomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_incomplete() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_cpu, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @pte_invalid, align 4
  %7 = sub nsw i32 0, %6
  %8 = call i32 @ptu_int_eq(i32 %5, i32 %7)
  %9 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @pte_invalid, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @ptu_int_eq(i32 %10, i32 %12)
  %14 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @pte_invalid, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i32 @ptu_int_eq(i32 %15, i32 %17)
  %19 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @pte_invalid, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @ptu_int_eq(i32 %20, i32 %22)
  %24 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @pte_invalid, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @ptu_int_eq(i32 %25, i32 %27)
  %29 = call i32 (...) @ptu_passed()
  %30 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  ret i32 %32
}

declare dso_local i32 @pt_cpu_parse(%struct.pt_cpu*, i8*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
